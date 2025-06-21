
`timescale 1 ns / 1 ps

	module axi_adder_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface axi_adder
		parameter integer C_axi_adder_DATA_WIDTH	= 32,
		parameter integer C_axi_adder_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface axi_adder
		input wire  axi_adder_aclk,
		input wire  axi_adder_aresetn,
		input wire [C_axi_adder_ADDR_WIDTH-1 : 0] axi_adder_awaddr,
		input wire [2 : 0] axi_adder_awprot,
		input wire  axi_adder_awvalid,
		output wire  axi_adder_awready,
		input wire [C_axi_adder_DATA_WIDTH-1 : 0] axi_adder_wdata,
		input wire [(C_axi_adder_DATA_WIDTH/8)-1 : 0] axi_adder_wstrb,
		input wire  axi_adder_wvalid,
		output wire  axi_adder_wready,
		output wire [1 : 0] axi_adder_bresp,
		output wire  axi_adder_bvalid,
		input wire  axi_adder_bready,
		input wire [C_axi_adder_ADDR_WIDTH-1 : 0] axi_adder_araddr,
		input wire [2 : 0] axi_adder_arprot,
		input wire  axi_adder_arvalid,
		output wire  axi_adder_arready,
		output wire [C_axi_adder_DATA_WIDTH-1 : 0] axi_adder_rdata,
		output wire [1 : 0] axi_adder_rresp,
		output wire  axi_adder_rvalid,
		input wire  axi_adder_rready
	);
// Instantiation of Axi Bus Interface axi_adder
	axi_adder_v1_0_axi_adder # ( 
		.C_S_AXI_DATA_WIDTH(C_axi_adder_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_axi_adder_ADDR_WIDTH)
	) axi_adder_v1_0_axi_adder_inst (
		.S_AXI_ACLK(axi_adder_aclk),
		.S_AXI_ARESETN(axi_adder_aresetn),
		.S_AXI_AWADDR(axi_adder_awaddr),
		.S_AXI_AWPROT(axi_adder_awprot),
		.S_AXI_AWVALID(axi_adder_awvalid),
		.S_AXI_AWREADY(axi_adder_awready),
		.S_AXI_WDATA(axi_adder_wdata),
		.S_AXI_WSTRB(axi_adder_wstrb),
		.S_AXI_WVALID(axi_adder_wvalid),
		.S_AXI_WREADY(axi_adder_wready),
		.S_AXI_BRESP(axi_adder_bresp),
		.S_AXI_BVALID(axi_adder_bvalid),
		.S_AXI_BREADY(axi_adder_bready),
		.S_AXI_ARADDR(axi_adder_araddr),
		.S_AXI_ARPROT(axi_adder_arprot),
		.S_AXI_ARVALID(axi_adder_arvalid),
		.S_AXI_ARREADY(axi_adder_arready),
		.S_AXI_RDATA(axi_adder_rdata),
		.S_AXI_RRESP(axi_adder_rresp),
		.S_AXI_RVALID(axi_adder_rvalid),
		.S_AXI_RREADY(axi_adder_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
