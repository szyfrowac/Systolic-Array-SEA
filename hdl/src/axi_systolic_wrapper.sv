`timescale 1ns / 1ps

module axi_systolic_wrapper #(
    parameter ROWS = 8,
    parameter COLS = 8,
    parameter DATA_WIDTH = 32
)(
    input  wire         aclk,
    input  wire         aresetn,
    
    // AXI-Stream Slave for B (Loaded first, 8 transfers)
    input  wire [ROWS*DATA_WIDTH-1:0] s_axis_b_tdata,
    input  wire                       s_axis_b_tvalid,
    output wire                       s_axis_b_tready,
    input  wire                       s_axis_b_tlast,
    
    // AXI-Stream Slave for A (Streams synchronously with D)
    input  wire [ROWS*DATA_WIDTH-1:0] s_axis_a_tdata,
    input  wire                       s_axis_a_tvalid,
    output wire                       s_axis_a_tready,
    input  wire                       s_axis_a_tlast,
    
    // AXI-Stream Slave for D (Streams synchronously with A)
    input  wire [COLS*DATA_WIDTH-1:0] s_axis_d_tdata,
    input  wire                       s_axis_d_tvalid,
    output wire                       s_axis_d_tready,
    input  wire                       s_axis_d_tlast,
    
    // AXI-Stream Master for C
    output wire [COLS*DATA_WIDTH-1:0] m_axis_c_tdata,
    output wire                       m_axis_c_tvalid,
    input  wire                       m_axis_c_tready,
    output wire                       m_axis_c_tlast
);

    // Internal unpacked arrays for the array inputs
    wire [DATA_WIDTH-1:0] sys_a_in [0:ROWS-1];
    wire [DATA_WIDTH-1:0] sys_b_in [0:ROWS-1][0:COLS-1];
    wire [DATA_WIDTH-1:0] sys_d_in [0:COLS-1];
    wire [DATA_WIDTH-1:0] sys_a_out [0:ROWS-1];
    wire [DATA_WIDTH-1:0] sys_c_out [0:COLS-1];
    
    // Shift register to accumulate B matrix
    reg [ROWS*DATA_WIDTH-1:0] b_shift [0:COLS-1];
    reg [3:0] b_load_count;
    reg       sys_load_b;
    
    // FSM States
    localparam STATE_LOAD_B = 2'd0;
    localparam STATE_STREAM = 2'd1;
    reg [1:0] state;

    wire reset = ~aresetn;

    // AXI Ready Signals
    assign s_axis_b_tready = (state == STATE_LOAD_B);
    // Stream data is accepted only when both A and D are valid, and B has finished loading.
    // We also wait for sys_load_b to be 0 so the B registers in the PEs have time to latch.
    assign s_axis_a_tready = (state == STATE_STREAM) && !sys_load_b && s_axis_d_tvalid;
    assign s_axis_d_tready = (state == STATE_STREAM) && !sys_load_b && s_axis_a_tvalid;

    // Load B Logic
    always @(posedge aclk) begin
        if (!aresetn) begin
            b_load_count <= 0;
            state <= STATE_LOAD_B;
            sys_load_b <= 0;
        end else begin
            sys_load_b <= 0;
            if (state == STATE_LOAD_B) begin
                if (s_axis_b_tvalid && s_axis_b_tready) begin
                    b_shift[b_load_count] <= s_axis_b_tdata;
                    if (b_load_count == COLS-1 || s_axis_b_tlast) begin
                        state <= STATE_STREAM;
                        b_load_count <= 0;
                        sys_load_b <= 1; // Pulse load_b for 1 cycle
                    end else begin
                        b_load_count <= b_load_count + 1;
                    end
                end
            end else if (state == STATE_STREAM) begin
                // If we get a tlast on the A stream, reset to load a new B matrix next time
                if (s_axis_a_tvalid && s_axis_a_tready && s_axis_a_tlast) begin
                    state <= STATE_LOAD_B;
                end
            end
        end
    end

    // Unpack B matrix
    genvar r, c;
    generate
        for (r = 0; r < ROWS; r = r + 1) begin
            for (c = 0; c < COLS; c = c + 1) begin
                assign sys_b_in[r][c] = b_shift[c][r*DATA_WIDTH +: DATA_WIDTH];
            end
        end
    endgenerate

    // Unpack A and D matrices
    wire [DATA_WIDTH-1:0] raw_a_in [0:ROWS-1];
    wire [DATA_WIDTH-1:0] raw_d_in [0:COLS-1];
    generate
        for (r = 0; r < ROWS; r = r + 1) begin
            assign raw_a_in[r] = (s_axis_a_tvalid && s_axis_a_tready) ? s_axis_a_tdata[r*DATA_WIDTH +: DATA_WIDTH] : 32'd0;
        end
        for (c = 0; c < COLS; c = c + 1) begin
            assign raw_d_in[c] = (s_axis_d_tvalid && s_axis_d_tready) ? s_axis_d_tdata[c*DATA_WIDTH +: DATA_WIDTH] : 32'd0;
        end
    endgenerate

    // A-Matrix Skew Buffer (8*r cycles)
    generate
        for (r = 0; r < ROWS; r = r + 1) begin : gen_skew_a
            if (r == 0) begin
                assign sys_a_in[r] = raw_a_in[r];
            end else begin
                reg [DATA_WIDTH-1:0] a_shift [0:(8*r)-1];
                always @(posedge aclk) begin
                    if (!aresetn) begin
                        for (int i = 0; i < (8*r); i = i + 1) a_shift[i] <= 0;
                    end else begin
                        a_shift[0] <= raw_a_in[r];
                        for (int i = 1; i < (8*r); i = i + 1) a_shift[i] <= a_shift[i-1];
                    end
                end
                assign sys_a_in[r] = a_shift[(8*r)-1];
            end
        end
    endgenerate

    // D-Matrix Skew Buffer (c cycles)
    generate
        for (c = 0; c < COLS; c = c + 1) begin : gen_skew_d
            if (c == 0) begin
                assign sys_d_in[c] = raw_d_in[c];
            end else begin
                reg [DATA_WIDTH-1:0] d_shift [0:c-1];
                always @(posedge aclk) begin
                    if (!aresetn) begin
                        for (int i = 0; i < c; i = i + 1) d_shift[i] <= 0;
                    end else begin
                        d_shift[0] <= raw_d_in[c];
                        for (int i = 1; i < c; i = i + 1) d_shift[i] <= d_shift[i-1];
                    end
                end
                assign sys_d_in[c] = d_shift[c-1];
            end
        end
    endgenerate

    wire [DATA_WIDTH-1:0] deskewed_c_out [0:COLS-1];
    generate
        for (c = 0; c < COLS; c = c + 1) begin : gen_deskew_c
            if (c == (COLS - 1)) begin
                assign deskewed_c_out[c] = sys_c_out[c];
            end else begin
                reg [DATA_WIDTH-1:0] c_shift [0:((COLS-1)-c)-1];
                always @(posedge aclk) begin
                    if (!aresetn) begin
                        for (int i = 0; i < ((COLS-1)-c); i = i + 1) c_shift[i] <= 0;
                    end else begin
                        c_shift[0] <= sys_c_out[c];
                        for (int i = 1; i < ((COLS-1)-c); i = i + 1) c_shift[i] <= c_shift[i-1];
                    end
                end
                assign deskewed_c_out[c] = c_shift[((COLS-1)-c)-1];
            end
        end
    endgenerate

    // Pack Deskewed C output matrix
    wire [COLS*DATA_WIDTH-1:0] packed_c_out;
    generate
        for (c = 0; c < COLS; c = c + 1) begin
            assign packed_c_out[c*DATA_WIDTH +: DATA_WIDTH] = deskewed_c_out[c];
        end
    endgenerate

    // Output valid generation (Delay exactly matches pipeline depth)
    // Vertical latency = 8 cycles per row * 8 rows = 64 cycles.
    // Deskew + Skew = 7 cycles.
    // Combinational evaluation means 1 less register.
    // Total latency = 70 cycles.
    wire pipe_start = s_axis_a_tvalid && s_axis_a_tready;
    reg [69:0] valid_pipe;
    reg [69:0] last_pipe;
    always @(posedge aclk) begin
        if (!aresetn) begin
            valid_pipe <= 0;
            last_pipe <= 0;
        end else begin
            valid_pipe <= {valid_pipe[68:0], pipe_start};
            last_pipe  <= {last_pipe[68:0], (pipe_start && s_axis_a_tlast)};
        end
    end

    assign m_axis_c_tvalid = valid_pipe[69];
    assign m_axis_c_tdata = packed_c_out;
    assign m_axis_c_tlast = last_pipe[69];

    SystolicArray #(
        .ROWS(ROWS),
        .COLS(COLS),
        .DATA_WIDTH(DATA_WIDTH)
    ) systolic_array_inst (
        .clock(aclk),
        .reset(reset),
        .io_a_in(sys_a_in),
        .io_b_in(sys_b_in),
        .io_load_b(sys_load_b),
        .io_d_in(sys_d_in),
        .io_round(2'd0), // Default round to nearest even
        .io_a_out(sys_a_out),
        .io_c_out(sys_c_out)
    );

endmodule
