module sync_r2w#(parameter ADDRSIZE = 4)(
    output reg [ADDRSIZE:0] sync_rptr,
    input [ADDRSIZE:0] rptr,
    input wclk, wrst_n
);

reg [ADDRSIZE:0] sync_rptr_internal;

always @(posedge wclk or negedge wrst_n) begin
    if(!wrst_n)begin
        sync_rptr_internal <= 0;
        sync_rptr <= 0;
    end else begin
        sync_rptr_internal <= rptr;
        sync_rptr <= sync_rptr_internal;
    end
end

endmodule