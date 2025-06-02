module rptr_empty#(parameter ADDRSIZE = 4)(
    output reg rempty,
    output wire [ADDRSIZE-1:0] raddr,
    output reg [ADDRSIZE:0] rptr,
    input [ADDRSIZE:0] sync_wptr,
    input rinc, rclk, rrst_n
);
    reg [ADDRSIZE:0] rbin;
    wire [ADDRSIZE:0] rgreynext, rbinnext;
    
    always@(posedge rclk or negedge rrst_n) begin
        if(!rrst_n) begin
            rbin <= 0;
            rptr <= 0;
        end else begin
            rbin <= rbinnext;
            rptr <= rgreynext;
        end
    end
    //Read address can be in binary as it is used in rclk domain only.
    assign raddr = rbin[ADDRSIZE-1:0];
    
    assign rbinnext = rbin + (rinc & ~rempty);
    assign rgreynext = (rbinnext>>1) ^ rbinnext;
    
    assign rempty_val = (sync_wptr == rgreynext);
    
    always@(posedge rclk or negedge rrst_n) begin
        if(!rrst_n) rempty <= 1'b1;
        else  rempty <= rempty_val;
    end
    
endmodule