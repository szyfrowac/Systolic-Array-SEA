`timescale 1ns / 1ps

import axi4stream_vip_pkg::*;
import vip_bd_vip_a_0_pkg::*;
import vip_bd_vip_b_0_pkg::*;
import vip_bd_vip_d_0_pkg::*;
import vip_bd_vip_c_0_pkg::*;

module axi_vip_tb();

  // Clock and Reset
  bit aclk;
  bit aresetn;

  initial begin
    aclk = 0;
    forever #5 aclk = ~aclk; // 100MHz clock
  end

  initial begin
    aresetn = 0;
    #100;
    aresetn = 1;
  end

  // Instantiate the Block Design wrapper
  vip_bd_wrapper dut (
    .aclk(aclk),
    .aresetn(aresetn)
  );

  // VIP Agents
  vip_bd_vip_a_0_mst_t agent_a;
  vip_bd_vip_b_0_mst_t agent_b;
  vip_bd_vip_d_0_mst_t agent_d;
  vip_bd_vip_c_0_slv_t agent_c;

  shortreal A_mat[4][8][8];
  shortreal B_mat[8][8];
  shortreal D_mat[4][8][8];
  shortreal C_expected[4][8][8];

  initial begin
    // Create agents (connecting them to the block design instances)
    agent_a = new("VIP_A", dut.vip_bd_i.vip_a.inst.IF);
    agent_b = new("VIP_B", dut.vip_bd_i.vip_b.inst.IF);
    agent_d = new("VIP_D", dut.vip_bd_i.vip_d.inst.IF);
    agent_c = new("VIP_C", dut.vip_bd_i.vip_c.inst.IF);

    // Set verbosity
    agent_a.set_verbosity(400);
    agent_b.set_verbosity(400);
    agent_d.set_verbosity(400);
    agent_c.set_verbosity(400);

    // Start agents
    agent_a.start_master();
    agent_b.start_master();
    agent_d.start_master();
    agent_c.start_slave();
    
    // Configure Slave (C) to always be ready
    begin
        axi4stream_ready_gen ready_gen;
        ready_gen = agent_c.driver.create_ready("ready_gen");
        ready_gen.set_ready_policy(XIL_AXI4STREAM_READY_GEN_OSC);
        ready_gen.set_low_time(0);
        ready_gen.set_high_time(100);
        agent_c.driver.send_tready(ready_gen);
    end

    // Wait for reset to complete
    wait(aresetn == 1);
    #100;
    
    $display("Starting AXI-Stream VIP Simulation...");

    // 1. Send B matrix (Weights)
    // 8 beats (columns), 256 bits each (8 floating point numbers)
    for(int c=0; c<8; c++) begin
        for(int r=0; r<8; r++) begin
            B_mat[r][c] = (r + c + 1) * 0.5;
        end
    end

    // Initialize A, D and compute C_expected
    for (int tc=0; tc<4; tc++) begin
        for(int i=0; i<8; i++) begin
            for(int j=0; j<8; j++) begin
                A_mat[tc][i][j] = (tc + 1) * 1.0 + (i) * 0.5 + (j) * 0.25;
                D_mat[tc][i][j] = (tc + 1) * 2.0 + (i - j); 
            end
        end
        
        // Compute C = A * B + D
        for(int i=0; i<8; i++) begin
            for(int c=0; c<8; c++) begin
                shortreal acc = D_mat[tc][i][c];
                for(int r=0; r<8; r++) begin
                    acc += A_mat[tc][i][r] * B_mat[r][c];
                end
                C_expected[tc][i][c] = acc;
            end
        end
    end

    // 1. Send B matrix (Weights)
    // 8 beats (columns), 256 bits each (8 floating point numbers)
    for (int c=0; c<8; c++) begin
        axi4stream_transaction tr_b;
        logic [7:0] data_payload[];
        tr_b = agent_b.driver.create_transaction("tx_b");
        data_payload = new[32];
        for (int r=0; r<8; r++) begin
            int bits = $shortrealtobits(B_mat[r][c]);
            data_payload[r*4 + 0] = bits[7:0];
            data_payload[r*4 + 1] = bits[15:8];
            data_payload[r*4 + 2] = bits[23:16];
            data_payload[r*4 + 3] = bits[31:24];
        end
        if (c == 7) tr_b.set_last(1'b1);
        tr_b.set_data(data_payload);
        tr_b.set_delay(0);
        agent_b.driver.send(tr_b);
    end

    // 2. Send A and D matrices simultaneously for 4 testcases
    for (int tc=0; tc<4; tc++) begin
        fork
            begin // D matrix (bias)
                for (int i=0; i<8; i++) begin
                    axi4stream_transaction tr_d;
                    logic [7:0] data_payload[];
                    tr_d = agent_d.driver.create_transaction("tx_d");
                    data_payload = new[32];
                    for(int c=0; c<8; c++) begin
                        int bits = $shortrealtobits(D_mat[tc][i][c]);
                        data_payload[c*4 + 0] = bits[7:0];
                        data_payload[c*4 + 1] = bits[15:8];
                        data_payload[c*4 + 2] = bits[23:16];
                        data_payload[c*4 + 3] = bits[31:24];
                    end
                    if (i == 7) tr_d.set_last(1'b1);
                    tr_d.set_data(data_payload);
                    tr_d.set_delay(0);
                    agent_d.driver.send(tr_d);
                end
            end
            begin // A matrix (Activations)
                for (int i=0; i<8; i++) begin
                    axi4stream_transaction tr_a;
                    logic [7:0] data_payload[];
                    tr_a = agent_a.driver.create_transaction("tx_a");
                    data_payload = new[32];
                    for (int r=0; r<8; r++) begin
                        int bits = $shortrealtobits(A_mat[tc][i][r]);
                        data_payload[r*4 + 0] = bits[7:0];
                        data_payload[r*4 + 1] = bits[15:8];
                        data_payload[r*4 + 2] = bits[23:16];
                        data_payload[r*4 + 3] = bits[31:24];
                    end
                    if (i == 7) tr_a.set_last(1'b1);
                    tr_a.set_data(data_payload);
                    tr_a.set_delay(0);
                    agent_a.driver.send(tr_a);
                end
            end
        join
    end

    // Wait for transactions to drain
    #20000;
    $display("Simulation Finished Without Completing Scoreboard!");
    $finish;
  end

  // Simple Scoreboard
  initial begin
      int total_rows = 0;
      bit mismatch = 0;
      wait(aresetn == 1);
      forever begin
          @(posedge aclk);
          if (dut.vip_bd_i.vip_c.inst.IF.TVALID && dut.vip_bd_i.vip_c.inst.IF.TREADY) begin
              int tc = total_rows / 8;
              int i = total_rows % 8;
              logic [255:0] tdata = dut.vip_bd_i.vip_c.inst.IF.TDATA;
              
              $display("Received Row %0d of TC %0d", i, tc);
              
              for (int c=0; c<8; c++) begin
                  int expected_bits = $shortrealtobits(C_expected[tc][i][c]);
                  int actual_bits = tdata[c*32 +: 32];
                  if (expected_bits !== actual_bits) begin
                      $display("MISMATCH at TC %0d, Row %0d, Col %0d: Expected %x, Got %x", tc, i, c, expected_bits, actual_bits);
                      mismatch = 1;
                  end
              end
              
              total_rows++;
              if (total_rows == 32) begin
                  if (!mismatch) $display("MATH VERIFICATION PASSED PERFECTLY FOR ALL 4 TESTCASES!");
                  $finish;
              end
          end
      end
  end

endmodule
