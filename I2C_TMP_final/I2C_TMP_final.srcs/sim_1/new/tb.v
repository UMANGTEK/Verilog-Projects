`timescale 1ns / 1ps

module tb_i2c_tmp3_fsm;

    reg clk;
    reg rst;
    wire sda;
    wire scl;
    wire [7:0] temp_msb;
    wire [7:0] temp_lsb;
    wire done;
    
    wire [4:0] state;
    wire [7:0] shift_reg;
    wire [2:0] bit_cnt;
    wire i2c_clk_en;
    wire read_en;
    wire sda_out;
    wire sda_oe;
    
    reg sda_slave_drive;
    reg sda_slave_oe;

    assign sda = (!dut.sda_oe) ? 1'b0 : 1'bz;
    assign state = dut.state;
    assign shift_reg = dut.shift_reg;
    assign bit_cnt = dut.bit_cnt;
    assign i2c_clk_en = dut.i2c_clk_en;
    assign read_en = dut.read_en;
    assign sda_out = dut.sda_out;
    assign sda_oe = dut.sda_oe;
    // Instantiate DUT
    i2c_tmp3_fsm dut (
        .clk(clk),
        .rst(rst),
        .sda(sda),
        .scl(scl),
        .temp_msb(temp_msb),
        .temp_lsb(temp_lsb),
        .done(done)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #4 clk = ~clk;  // 125 MHz -> 8 ns period
    end
    
    // Stimulus
    initial begin
        rst = 1;
        sda_slave_drive = 1;
        sda_slave_oe = 0;
        #20;
        rst = 0;

        // Simulate slave ACKs and data (simple example)
        forever begin
            @(negedge scl);
            if (dut.sda_oe == 0) begin
                // Master is reading, we provide data
                sda_slave_oe = 1;
                sda_slave_drive = 0;  // provide random bit
            end else begin
                sda_slave_oe = 0;  // release line when master drives
            end
        end
    end

    // Monitor
    initial begin
        $dumpfile("i2c_tmp3_fsm_tb.vcd");
        $dumpvars(0, tb_i2c_tmp3_fsm);
        $dumpvars(0, dut.i2c_clk_en);  // add i2c_clk_en signal to waveform
        #150_000 $finish;
    end

endmodule
