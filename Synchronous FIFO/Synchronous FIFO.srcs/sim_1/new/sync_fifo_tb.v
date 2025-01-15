`timescale 1ns / 1ps
`define clk_period 10
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 22:15:10
// Design Name: 
// Module Name: sync_fifo_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sync_fifo_tb();

        reg clk;
        reg rst_n;
        
        reg wr_en_i;
        reg [7:0]data_i;
        wire full_o;
        reg rd_en_i;
        
        wire empty_o;
        wire [7:0]data_o;

    sync_fifo SYNC_FIFO(
        .clk        (clk),
        .rst_n      (rst_n),
    
        .wr_en_i    (wr_en_i),
        .data_i     (data_i),
        .full_o     (full_o),
    
        .rd_en_i    (rd_en_i),
        .empty_o    (empty_o),
        .data_o     (data_o)
    );
    
    initial clk = 1'b1;
   
    integer i;
    initial begin
        rst_n <= 1'b1;
        wr_en_i <= 1'd0;
        rd_en_i <= 1'd0;
        data_i <= 8'd0;
        
        #(`clk_period);
        rst_n <= 1'b0;  //reset system
        
        #(`clk_period);
        rst_n <= 1'b1;  //finish reset
        
        //write data
        rd_en_i = 1'd0;
        wr_en_i = 1'd1;
        
        for(i = 0; i < 8; i = i+1) begin
            data_i = i;
            #(`clk_period);
        end
        
        //read data
        rd_en_i = 1'd1;
        wr_en_i = 1'd0;
        
        for(i = 0; i < 8; i = i+1) begin
            #(`clk_period);
        end
        
        //write data
        rd_en_i = 1'd0;
        wr_en_i = 1'd1;
        
        for(i = 0; i < 8; i = i+1) begin
            data_i = i;
            #(`clk_period);
        end
        #(`clk_period);
        #(`clk_period);
        #(`clk_period);
        $stop;
    end
    
endmodule
