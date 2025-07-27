module sync_w2r#(parameter ADDRSIZE = 4)(
    output reg [ADDRSIZE:0] sync_wptr,
    input [ADDRSIZE:0] wptr,
    input rclk, rrst_n
);

reg [ADDRSIZE:0] sync_wptr_internal;

always @(posedge rclk or negedge rrst_n) begin
    if(!rrst_n)begin
        sync_wptr_internal <= 0;
        sync_wptr <= 0;
    end else begin
        sync_wptr_internal <= wptr;
        sync_wptr <= sync_wptr_internal;
    end
end

endmodule