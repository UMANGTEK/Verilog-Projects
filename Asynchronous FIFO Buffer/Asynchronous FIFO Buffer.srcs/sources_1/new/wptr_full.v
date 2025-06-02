module wptr_full#(parameter ADDRSIZE = 4)(
    output reg wfull,
    output wire [ADDRSIZE-1:0] waddr,
    output reg [ADDRSIZE:0] wptr,
    input [ADDRSIZE:0] sync_rptr,
    input winc, wclk, wrst_n
);
    reg [ADDRSIZE:0] wbin;
    wire [ADDRSIZE:0] wgreynext, wbinnext;
    
    always@(posedge wclk or negedge wrst_n) begin
        if(!wrst_n) begin
            wbin <= 0;
            wptr <= 0;
        end else begin
            wbin <= wbinnext;
            wptr <= wgreynext;
        end
    end
    //Write address can be in binary as it is used in wclk domain only.
    assign waddr = wbin[ADDRSIZE-1:0];
    
    assign wbinnext = wbin + (winc & ~wfull);
    assign wgreynext = (wbinnext>>1) ^ wbinnext;
    
    assign wfull_val = ((wgreynext[ADDRSIZE] != sync_rptr[ADDRSIZE]) &&
                        (wgreynext[ADDRSIZE-1] != sync_rptr[ADDRSIZE-1]) &&
                        ((wgreynext[ADDRSIZE-2:0] == sync_rptr[ADDRSIZE-2:0])));
    
    always@(posedge wclk or negedge wrst_n) begin
        if(!wrst_n) wfull <= 1'b0;
        else  wfull <= wfull_val;
    end
    
endmodule