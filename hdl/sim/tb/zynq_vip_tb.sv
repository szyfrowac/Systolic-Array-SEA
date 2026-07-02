`timescale 1ns / 1ps

module zynq_vip_tb();

  wire [14:0] DDR_addr;
  wire [2:0] DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0] DDR_dm;
  wire [31:0] DDR_dq;
  wire [3:0] DDR_dqs_n;
  wire [3:0] DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0] FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;

  system_wrapper UUT (
    .DDR_addr(DDR_addr),
    .DDR_ba(DDR_ba),
    .DDR_cas_n(DDR_cas_n),
    .DDR_ck_n(DDR_ck_n),
    .DDR_ck_p(DDR_ck_p),
    .DDR_cke(DDR_cke),
    .DDR_cs_n(DDR_cs_n),
    .DDR_dm(DDR_dm),
    .DDR_dq(DDR_dq),
    .DDR_dqs_n(DDR_dqs_n),
    .DDR_dqs_p(DDR_dqs_p),
    .DDR_odt(DDR_odt),
    .DDR_ras_n(DDR_ras_n),
    .DDR_reset_n(DDR_reset_n),
    .DDR_we_n(DDR_we_n),
    .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
    .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
    .FIXED_IO_mio(FIXED_IO_mio),
    .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
    .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
    .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb)
  );

  // DMA Register Offsets
  localparam MM2S_DMACR  = 32'h00;
  localparam MM2S_SA     = 32'h18;
  localparam MM2S_LENGTH = 32'h28;
  
  localparam S2MM_DMACR  = 32'h30;
  localparam S2MM_DA     = 32'h48;
  localparam S2MM_LENGTH = 32'h58;
  localparam S2MM_DMASR  = 32'h34;

  // Base Addresses from xparameters.h
  localparam DMA_A_BASE = 32'h40400000;
  localparam DMA_B_BASE = 32'h40410000;
  localparam DMA_C_BASE = 32'h40420000;

  // Memory Base Addresses (in simulated DDR)
  localparam ADDR_A = 32'h00100000;
  localparam ADDR_B = 32'h00200000;
  localparam ADDR_C = 32'h00300000;
  localparam ADDR_D = 32'h00400000;

  // Padded Matrices for hardware skewing
  int A_padded [8][15];
  int B_padded [15][8];
  int r, c;
  int addr;
  bit [1:0] resp;
  bit [31:0] read_data;

  // Wait tasks to handle API easily
  task write_ps_mem(input int data, input int addr);
    UUT.system_i.processing_system7_0.inst.write_mem(data, addr, 4);
  endtask
  
  task read_ps_mem(input int addr, output int data);
    bit [1023:0] temp_data;
    UUT.system_i.processing_system7_0.inst.read_mem(addr, 4, temp_data);
    data = temp_data[31:0];
  endtask

  task write_axi(input int addr, input int data);
    UUT.system_i.processing_system7_0.inst.write_data(addr, 4, data, resp);
  endtask

  task read_axi(input int addr, output int data);
    bit [31:0] tmp;
    UUT.system_i.processing_system7_0.inst.read_data(addr, 4, tmp, resp);
    data = tmp;
  endtask

  initial begin
    $display("========================================");
    $display(" Starting Full Zynq VIP DMA Simulation  ");
    $display("========================================");

    // 1. Initialize Matrices with 1.0f (0x3F800000)
    for (r=0; r<8; r++) begin
      for (c=0; c<15; c++) begin
        A_padded[r][c] = 0;
        B_padded[c][r] = 0;
      end
    end

    // Pad A (Rows delayed by C)
    for (r=0; r<8; r++) begin
      for (c=0; c<8; c++) begin
        A_padded[r][r+c] = 32'h3F800000; // 1.0f
      end
    end

    // Pad B (Columns delayed by R)
    for (r=0; r<8; r++) begin
      for (c=0; c<8; c++) begin
        B_padded[r+c][c] = 32'h3F800000; // 1.0f
      end
    end

    // 2. Initialize Zynq VIP
    UUT.system_i.processing_system7_0.inst.fpga_soft_reset(32'h1);
    #1000;
    UUT.system_i.processing_system7_0.inst.fpga_soft_reset(32'h0);
    #2000;

    $display("[TB] Writing padded matrices to Simulated DDR memory...");
    
    // Write A to Memory
    addr = ADDR_A;
    for (r=0; r<8; r++) begin
      for (c=0; c<15; c++) begin
        write_ps_mem(A_padded[r][c], addr);
        addr += 4;
      end
    end

    // Write B to Memory
    addr = ADDR_B;
    for (r=0; r<15; r++) begin
      for (c=0; c<8; c++) begin
        write_ps_mem(B_padded[r][c], addr);
        addr += 4;
      end
    end
    
    // Write Zeros to D Memory
    addr = ADDR_D;
    for (r=0; r<15; r++) begin
      for (c=0; c<8; c++) begin
        write_ps_mem(32'h00000000, addr);
        addr += 4;
      end
    end

    $display("[TB] Programming Hardware DMAs via AXI-Lite...");

    // Start DMA C (Receive) First
    write_axi(DMA_C_BASE + S2MM_DMACR, 32'h1);
    write_axi(DMA_C_BASE + S2MM_DA, ADDR_C);
    write_axi(DMA_C_BASE + S2MM_LENGTH, 15*8*4);

    // Start DMA B
    write_axi(DMA_B_BASE + MM2S_DMACR, 32'h1);
    write_axi(DMA_B_BASE + MM2S_SA, ADDR_B);
    write_axi(DMA_B_BASE + MM2S_LENGTH, 15*8*4);

    // Wait a bit to ensure B loads
    #500;

    // Start DMA A (and D)
    write_axi(DMA_A_BASE + MM2S_DMACR, 32'h1);
    write_axi(DMA_A_BASE + MM2S_SA, ADDR_A);
    write_axi(DMA_C_BASE + MM2S_DMACR, 32'h1);
    write_axi(DMA_C_BASE + MM2S_SA, ADDR_D);
    
    // Fire A and D lengths
    write_axi(DMA_A_BASE + MM2S_LENGTH, 8*15*4);
    write_axi(DMA_C_BASE + MM2S_LENGTH, 15*8*4);

    $display("[TB] DMAs running... Polling for completion...");

    read_data = 0;
    while ((read_data & 32'h2) == 0) begin // Bit 1 is Idle
      read_axi(DMA_C_BASE + S2MM_DMASR, read_data);
      #1000;
    end

    $display("========================================");
    $display(" DMA Transfer Complete! Reading Results ");
    $display("========================================");

    addr = ADDR_C;
    for (r=0; r<15; r++) begin
      $write("Row %0d: ", r);
      for (c=0; c<8; c++) begin
        read_ps_mem(addr, read_data);
        $write("%08h ", read_data);
        addr += 4;
      end
      $display("");
    end

    $display("========================================");
    $display(" SIMULATION FINISHED ");
    $display("========================================");
    $finish;
  end

endmodule
