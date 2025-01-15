`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 23:20:44
// Design Name: 
// Module Name: sync_fifo
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


module sync_fifo(
        input clk,
        input rst_n,
        
        input wr_en_i,
        input [7:0]data_i,
        output full_o,
        
        input rd_en_i,
        output empty_o,
        output reg [7:0]data_o
    );
    parameter DEPTH = 8;
    reg [7:0] mem [0 : DEPTH-1];
    reg [2:0] wr_ptr;
    reg [2:0] rd_ptr;
    reg [3:0] count;
    
    assign full_o = (count == DEPTH);
    assign empty_o = (count == 0);
    
    //----------write process-----------
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            wr_ptr <= 3'd0;
        end else begin
            if(wr_en_i) begin
                mem[wr_ptr] <= data_i;
                wr_ptr <= wr_ptr + 3'd1;
            end
        end
    end
    
    //----------read process-----------
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            rd_ptr <= 3'd0;
        end else begin
            if(rd_en_i) begin
                data_o <= mem[rd_ptr];
                rd_ptr <= rd_ptr + 3'd1;
            end
        end
    end
    
    //-----------count----------------
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
        count <= 4'd0;
        end else begin
            case ({wr_en_i, rd_en_i})
                2'b10: count <= count + 1;
                2'b01: count <= count - 1;
                2'b11: count <= count;
                2'b00: count <= count;
                default: count <= count;
            endcase          
        end
    end
    
endmodule
