`timescale 1ns / 1ps

module i2c_tmp3_fsm (
    input wire clk,
    input wire rst,
    inout wire sda,
    output reg scl,
    //output [3:0]leds 
    output reg [7:0] temp_msb,
    output reg [7:0] temp_lsb,
    output reg done
);

    parameter SLAVE_ADDR = 7'b1001000;
    parameter REG_TEMP   = 8'h00;

    parameter IDLE = 5'd0, START = 5'd1, ADDR_L = 5'd2, ADDR_H = 5'd3, ACK_ADDR_L = 5'd4,
              ACK_ADDR_H = 5'd5, PTR_L = 5'd6, PTR_H = 5'd7, ACK_PTR_L = 5'd8, ACK_PTR_H = 5'd9,
              MSB_L = 5'd10, MSB_H = 5'd11, M_ACK_L = 5'd12, M_ACK_H = 5'd13, LSB_L = 5'd14, LSB_H = 5'd15, STOP = 5'd16;
    
//    reg [7:0] temp_msb;
//   reg [7:0] temp_lsb;
//    reg done;
    
    reg [4:0] state;
    reg [7:0] shift_reg;
    reg [2:0] bit_cnt;
    reg [15:0] clk_div;
    reg i2c_clk_en;
    reg read_en;
    reg sda_out;
    reg sda_oe;
    reg pass2 = 0;

    assign sda = sda_oe ? sda_out : 1'bz;
//    assign leds[0] = temp_lsb[0];
//    assign leds[1] = temp_lsb[1];
//    assign leds[2] = temp_lsb[2];
//    assign leds[3] = temp_lsb[3];

ila_0 ila_i (
	.clk(clk), // input wire clk


	.probe0(rst), // input wire [0:0]  probe0  
	.probe1(sda), // input wire [0:0]  probe1 
	.probe2(scl), // input wire [0:0]  probe2 
	.probe3(temp_msb), // input wire [7:0]  probe3 
	.probe4(temp_lsb), // input wire [7:0]  probe4 
	.probe5(done), // input wire [0:0]  probe5 
	.probe6(state), // input wire [4:0]  probe6 
	.probe7(shift_reg), // input wire [7:0]  probe7 
	.probe8(bit_cnt), // input wire [2:0]  probe8 
	.probe9(i2c_clk_en), // input wire [0:0]  probe9 
	.probe10(read_en), // input wire [0:0]  probe10 
	.probe11(sda_out), // input wire [0:0]  probe11 
	.probe12(sda_oe) // input wire [0:0]  probe12
);
   
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            clk_div <= 0;
            i2c_clk_en <= 0;
        end else begin
            if (clk_div == 256) begin //Clock Divider
                clk_div <= 0;
                i2c_clk_en <= 1;
            end else begin
                clk_div <= clk_div + 1;
                i2c_clk_en <= 0;
            end
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            state <= IDLE;
            scl <= 1;
            sda_out <= 1'b1;
            sda_oe <= 1;
            done <= 0;
            bit_cnt <= 7;
        end else if (i2c_clk_en) begin
            case (state)
                IDLE: begin
                    scl <= 1; sda_out <= 1; sda_oe <= 1;
                    done <= 0;
                    if(!pass2) begin
                        read_en <= 0;
                        pass2 = 1;
                    end else begin
                        read_en <=1;
                    end
                    state <= START;
                end

                START: begin
                    sda_out <= 0;
                    shift_reg <= {SLAVE_ADDR, read_en};
                    bit_cnt <= 7;
                    state <= ADDR_L;
                end

                ADDR_L: begin
                    sda_oe <= 1;
                    scl <= 0;
                    sda_out <= shift_reg[bit_cnt];
                    state <= ADDR_H;
                end

                ADDR_H: begin
                    scl <= 1;
                    if (bit_cnt == 0)begin
                     state <= ACK_ADDR_L;
                     bit_cnt <= 7;
                    end
                    else begin 
                        bit_cnt <= bit_cnt - 1; 
                        state <= ADDR_L; 
                    end
                end

                ACK_ADDR_L: begin scl <= 0; sda_oe <= 0; state <= ACK_ADDR_H; end
                ACK_ADDR_H: begin 
                    scl <= 1; 
                    if(sda == 0 && read_en == 0) begin
                        state <= PTR_L; 
                        bit_cnt <= 7; 
                        shift_reg <= REG_TEMP; 
                    end else if(sda == 0 && read_en == 1) begin
                        state <= MSB_L;
                    end
                end

                PTR_L: begin scl <= 0; sda_oe <= 1; sda_out <= shift_reg[bit_cnt]; state <= PTR_H; end
                PTR_H: begin scl <= 1;
                    if (bit_cnt == 0) begin 
                        state <= ACK_PTR_L;
                        bit_cnt <= 7;
                    end
                    else begin bit_cnt <= bit_cnt - 1; state <= PTR_L; end
                end

                ACK_PTR_L: begin scl <= 0; sda_oe <= 0;read_en <= 1; state <= ACK_PTR_H; end
                ACK_PTR_H: begin 
                    scl <= 1;
                    if(sda == 0)begin
                        state <= IDLE;
                        bit_cnt <= 7;
                        shift_reg <= {SLAVE_ADDR, read_en};
                    end else state <= STOP;
                end

                

                MSB_L: begin scl <= 0; sda_oe<=0; state <= MSB_H; end
                MSB_H: begin 
                    scl <= 1; 
                    temp_msb[bit_cnt] <= sda;
                    if (bit_cnt == 0) begin
                        state <= M_ACK_L;
                        sda_oe <= 1;
                        bit_cnt <= 7;
                    end
                    else begin bit_cnt <= bit_cnt - 1; state <= MSB_L; end
                end

                M_ACK_L: begin 
                    scl <= 0; 
                    if(temp_msb != 0)begin
                        sda_out <= 0; 
                        state <= M_ACK_H; 
                    end else begin
                        state <= IDLE;
                    end
                end
                M_ACK_H: begin scl <= 1; state <= LSB_L; bit_cnt <= 7; end

                LSB_L: begin scl <= 0; sda_oe <= 0; state <= LSB_H; end
                LSB_H: begin scl <= 1; temp_lsb[bit_cnt] <= sda;
                    if (bit_cnt == 0) state <= STOP;
                    else begin bit_cnt <= bit_cnt - 1; state <= LSB_L; end
                end

                STOP: begin scl <= 1; sda_oe <= 1; sda_out <= 0; sda_out <= 1; done <= 1; end

                default: state <= IDLE;
            endcase
        end
    end

endmodule
