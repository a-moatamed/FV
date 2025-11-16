// Generic bus-like interface template with clocking and modports
`timescale 1ns/1ps

interface my_if(
  input  logic aclk,
  input  logic aresetn
);
  // TODO: Customize signal list for your DUT protocol

logic [31 : 0] s_axi_awaddr;
logic [7 : 0] s_axi_awlen;
logic [2 : 0] s_axi_awsize;
logic [1 : 0] s_axi_awburst;
logic [0 : 0] s_axi_awlock;
logic [3 : 0] s_axi_awcache;
logic [2 : 0] s_axi_awprot;
logic [3 : 0] s_axi_awregion;
logic [3 : 0] s_axi_awqos;
logic s_axi_awvalid;
logic s_axi_awready;
logic [31 : 0] s_axi_wdata;
logic [3 : 0] s_axi_wstrb;
logic s_axi_wlast;
logic s_axi_wvalid;
logic s_axi_wready;
logic [1 : 0] s_axi_bresp;
logic s_axi_bvalid;
logic s_axi_bready;
logic [31 : 0] s_axi_araddr;
logic [7 : 0] s_axi_arlen;
logic [2 : 0] s_axi_arsize;
logic [1 : 0] s_axi_arburst;
logic [0 : 0] s_axi_arlock;
logic [3 : 0] s_axi_arcache;
logic [2 : 0] s_axi_arprot;
logic [3 : 0] s_axi_arregion;
logic [3 : 0] s_axi_arqos;
logic s_axi_arvalid;
logic s_axi_arready;
logic [31 : 0] s_axi_rdata;
logic [1 : 0] s_axi_rresp;
logic s_axi_rlast;
logic s_axi_rvalid;
logic s_axi_rready;
logic [31 : 0] m_axi_awaddr;
logic [7 : 0] m_axi_awlen;
logic [2 : 0] m_axi_awsize;
logic [1 : 0] m_axi_awburst;
logic [0 : 0] m_axi_awlock;
logic [3 : 0] m_axi_awcache;
logic [2 : 0] m_axi_awprot;
logic [3 : 0] m_axi_awregion;
logic [3 : 0] m_axi_awqos;
logic m_axi_awvalid;
logic m_axi_awready;
logic [31 : 0] m_axi_wdata;
logic [3 : 0] m_axi_wstrb;
logic m_axi_wlast;
logic m_axi_wvalid;
logic m_axi_wready;
logic [1 : 0] m_axi_bresp;
logic m_axi_bvalid;
logic m_axi_bready;
logic [31 : 0] m_axi_araddr;
logic [7 : 0] m_axi_arlen;
logic [2 : 0] m_axi_arsize;
logic [1 : 0] m_axi_arburst;
logic [0 : 0] m_axi_arlock;
logic [3 : 0] m_axi_arcache;
logic [2 : 0] m_axi_arprot;
logic [3 : 0] m_axi_arregion;
logic [3 : 0] m_axi_arqos;
logic m_axi_arvalid;
logic m_axi_arready;
logic [31 : 0] m_axi_rdata;
logic [1 : 0] m_axi_rresp;
logic m_axi_rlast;
logic m_axi_rvalid;
logic m_axi_rready;

  // Simple interface without clocking blocks or modports.

  // Synchronous reset default
  // TODO: Adjust reset behavior to match DUT
  // property p_reset_defaults;
  //   @(posedge clk) !rst_n |-> (!valid && !write);
  // endproperty
  // a_reset_defaults: assert property (p_reset_defaults);

  // No modports used in the simplified template.

endinterface : my_if
