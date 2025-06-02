`timescale 1ns / 1ps

module async_fifo_tb;

  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 4;
  parameter DEPTH = 1 << ADDR_WIDTH;

  reg wclk, rclk, wrst_n, rrst_n;
  reg w_en, r_en;
  reg [DATA_WIDTH-1:0] wdata;
  wire [DATA_WIDTH-1:0] rdata;
  wire full, empty;
  wire [ADDR_WIDTH-1:0]raddr, waddr;
  
  assign raddr = dut.raddr;
  assign waddr = dut.waddr;

  // Instantiate your FIFO module
  async_fifo #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  ) dut (
    .wclk(wclk),
    .rclk(rclk),
    .wrst_n(wrst_n),
    .rrst_n(rrst_n),
    .winc(w_en),
    .rinc(r_en),
    .wdata(wdata),
    .rdata(rdata),
    .wfull(full),
    .rempty(empty)
  );
    
  // Write clock generation (100 MHz)
  initial wclk = 0;
  always #5 wclk = ~wclk;

  // Read clock generation (50 MHz)
  initial rclk = 0;
  always #5.5 rclk = ~rclk;

  // Reset logic
  initial begin
    wrst_n = 0;
    rrst_n = 0;
    w_en = 0;
    r_en = 0;
    wdata = 0;
    #20;
    wrst_n = 1;
    rrst_n = 1;
  end

  // Write process
  initial begin
    @(posedge wrst_n);
    repeat (20) begin
      @(posedge wclk);
      if (!full) begin
        w_en = 1;
        wdata = $random;
      end else begin
        w_en = 0; // stop writing when full
      end
    end
    w_en = 0;
  end

  // Read process
  initial begin
    @(posedge rrst_n);
    repeat (30) begin
      @(posedge rclk);
      if (!empty) begin
        r_en = 0;
      end else begin
        r_en = 0; // stop reading when empty
      end
    end
    r_en = 0;
  end

endmodule
