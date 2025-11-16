// Simple top-level. Instantiates DUT (to be added) and kicks off UVM.

`timescale 1ns/1ps

`include "uvm_macros.svh"
import uvm_pkg::*;
import uvm_tb_pkg::*;

module top;
  // Clock/reset and interface
  logic clk; logic rst_n;
  my_if tb_if(.aclk(clk), .aresetn(rst_n));

  // TODO: Instantiate DUT when available under ./src/rtl
  axi_register_slice_0 u_dut (
    // Clock + reset
    .aclk(tb_if.aclk),
    .aresetn(tb_if.aresetn),

    // SLAVE AXI
    .s_axi_awaddr   (tb_if.s_axi_awaddr),
    .s_axi_awlen    (tb_if.s_axi_awlen),
    .s_axi_awsize   (tb_if.s_axi_awsize),
    .s_axi_awburst  (tb_if.s_axi_awburst),
    .s_axi_awlock   (tb_if.s_axi_awlock),
    .s_axi_awcache  (tb_if.s_axi_awcache),
    .s_axi_awprot   (tb_if.s_axi_awprot),
    .s_axi_awregion (tb_if.s_axi_awregion),
    .s_axi_awqos    (tb_if.s_axi_awqos),
    .s_axi_awvalid  (tb_if.s_axi_awvalid),
    .s_axi_awready  (tb_if.s_axi_awready),

    .s_axi_wdata    (tb_if.s_axi_wdata),
    .s_axi_wstrb    (tb_if.s_axi_wstrb),
    .s_axi_wlast    (tb_if.s_axi_wlast),
    .s_axi_wvalid   (tb_if.s_axi_wvalid),
    .s_axi_wready   (tb_if.s_axi_wready),

    .s_axi_bresp    (tb_if.s_axi_bresp),
    .s_axi_bvalid   (tb_if.s_axi_bvalid),
    .s_axi_bready   (tb_if.s_axi_bready),

    .s_axi_araddr   (tb_if.s_axi_araddr),
    .s_axi_arlen    (tb_if.s_axi_arlen),
    .s_axi_arsize   (tb_if.s_axi_arsize),
    .s_axi_arburst  (tb_if.s_axi_arburst),
    .s_axi_arlock   (tb_if.s_axi_arlock),
    .s_axi_arcache  (tb_if.s_axi_arcache),
    .s_axi_arprot   (tb_if.s_axi_arprot),
    .s_axi_arregion (tb_if.s_axi_arregion),
    .s_axi_arqos    (tb_if.s_axi_arqos),
    .s_axi_arvalid  (tb_if.s_axi_arvalid),
    .s_axi_arready  (tb_if.s_axi_arready),

    .s_axi_rdata    (tb_if.s_axi_rdata),
    .s_axi_rresp    (tb_if.s_axi_rresp),
    .s_axi_rlast    (tb_if.s_axi_rlast),
    .s_axi_rvalid   (tb_if.s_axi_rvalid),
    .s_axi_rready   (tb_if.s_axi_rready),

    // MASTER AXI
    .m_axi_awaddr   (tb_if.m_axi_awaddr),
    .m_axi_awlen    (tb_if.m_axi_awlen),
    .m_axi_awsize   (tb_if.m_axi_awsize),
    .m_axi_awburst  (tb_if.m_axi_awburst),
    .m_axi_awlock   (tb_if.m_axi_awlock),
    .m_axi_awcache  (tb_if.m_axi_awcache),
    .m_axi_awprot   (tb_if.m_axi_awprot),
    .m_axi_awregion (tb_if.m_axi_awregion),
    .m_axi_awqos    (tb_if.m_axi_awqos),
    .m_axi_awvalid  (tb_if.m_axi_awvalid),
    .m_axi_awready  (tb_if.m_axi_awready),

    .m_axi_wdata    (tb_if.m_axi_wdata),
    .m_axi_wstrb    (tb_if.m_axi_wstrb),
    .m_axi_wlast    (tb_if.m_axi_wlast),
    .m_axi_wvalid   (tb_if.m_axi_wvalid),
    .m_axi_wready   (tb_if.m_axi_wready),

    .m_axi_bresp    (tb_if.m_axi_bresp),
    .m_axi_bvalid   (tb_if.m_axi_bvalid),
    .m_axi_bready   (tb_if.m_axi_bready),

    .m_axi_araddr   (tb_if.m_axi_araddr),
    .m_axi_arlen    (tb_if.m_axi_arlen),
    .m_axi_arsize   (tb_if.m_axi_arsize),
    .m_axi_arburst  (tb_if.m_axi_arburst),
    .m_axi_arlock   (tb_if.m_axi_arlock),
    .m_axi_arcache  (tb_if.m_axi_arcache),
    .m_axi_arprot   (tb_if.m_axi_arprot),
    .m_axi_arregion (tb_if.m_axi_arregion),
    .m_axi_arqos    (tb_if.m_axi_arqos),
    .m_axi_arvalid  (tb_if.m_axi_arvalid),
    .m_axi_arready  (tb_if.m_axi_arready),

    .m_axi_rdata    (tb_if.m_axi_rdata),
    .m_axi_rresp    (tb_if.m_axi_rresp),
    .m_axi_rlast    (tb_if.m_axi_rlast),
    .m_axi_rvalid   (tb_if.m_axi_rvalid),
    .m_axi_rready   (tb_if.m_axi_rready)
);
  // Clock/reset gen (example placeholder)
  initial clk = 0; always #5 clk = ~clk;
  initial begin rst_n = 0; #50 rst_n = 1; end

  // Make virtual interface(s) available via UVM config DB
  initial begin
    // Provide single interface without modports
    uvm_config_db#(virtual my_if)::set(null, "*", "vif", tb_if);
  end

  // Kick off UVM
  initial begin
    `uvm_info("TOP", "SIMULATION STARTED", UVM_NONE)
    fork
        begin
            run_test("base_test"); // +UVM_TESTNAME=base_test can override
        end
        begin
            #1000;
            `uvm_fatal("SIM_END", $sformatf("Reached the simulation limi"))
        end
    join_any

  end
endmodule : top
