module async_fifo #(parameter DSIZE = 8,
                    parameter ASIZE = 4)
(
output [DSIZE-1:0] rdata,
output wfull,
output rempty,
input [DSIZE-1:0] wdata,
input winc, wclk, wrst_n,
input rinc, rclk, rrst_n
);

wire [ASIZE-1:0] waddr, raddr;
wire [ASIZE:0] wptr, rptr, sync_wptr, sync_rptr;

sync_r2w sync_r2w(
    .sync_rptr(sync_rptr),
    .rptr(rptr),
    .wclk(wclk),
    .wrst_n(wrst_n)
);

sync_w2r sync_w2r(
    .sync_wptr(sync_wptr),
    .wptr(wptr),
    .rclk(rclk),
    .rrst_n(rrst_n)
);

fifomem mem(
    .rdata(rdata),
    .wdata(wdata),
    .waddr(waddr),
    .raddr(raddr),
    .wclken(winc),
    .wfull(wfull),
    .wclk(wclk)
);

rptr_empty rptr_empty(
    .rempty(rempty),
    .raddr(raddr),
    .rptr(rptr),
    .sync_wptr(sync_wptr),
    .rinc(rinc),
    .rclk(rclk),
    .rrst_n(rrst_n)
);

wptr_full wptr_full(
    .wfull(wfull),
    .waddr(waddr),
    .wptr(wptr),
    .sync_rptr(sync_rptr),
    .winc(winc),
    .wclk(wclk),
    .wrst_n(wrst_n)
);

endmodule