`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2015 11:38:21 AM
// Design Name: 
// Module Name: seven_segment
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


module seven_segment(
    input   [31:0]  num,
    input           clk,
    input           reset,
    output  [15:0]  out
    );

    // Number of cycles to wait before switching to next digit
    parameter   n_cycles = 200000;

    reg     [20:0]  counter;
    reg     [7:0]   digit_select;
    reg     [3:0]   cur_digit_val;
    wire    [7:0]   digit_code;

    // counter
    always @(posedge clk) begin
        if (~reset) begin
            counter <= n_cycles;
        end
        else begin
            if (counter == 0) 
                counter <= n_cycles;
            else
                counter <= counter - 1;
        end
    end

    //digit select and digit code control
    assign out[15:8] = digit_code;
    assign out[7:0]  = digit_select;   

    gen_digit_code A (
        .num(cur_digit_val), 
        .code(digit_code)
    );

    // digit select logic and cur_digit_val logic
    always @(posedge clk) begin
        if (~reset) begin
            digit_select <= 8'b11111110;
            cur_digit_val <= num[3:0];
        end
        else if (counter == 0) begin
            if (~digit_select[7])
                digit_select <= 8'b11111110;
            else 
                digit_select <= (digit_select << 1) | 8'b00000001;
            cur_digit_val <= cur_digit_val;
        end
        else begin
            digit_select <= digit_select;
            if (~digit_select[7]) 
                cur_digit_val <= num[3:0];
            else if (~digit_select[6]) 
                cur_digit_val <= num[7:4];
            else if (~digit_select[5]) 
                cur_digit_val <= num[11:8];
            else if (~digit_select[4]) 
                cur_digit_val <= num[15:12];
            else if (~digit_select[3]) 
                cur_digit_val <= num[19:16];
            else if (~digit_select[2]) 
                cur_digit_val <= num[23:20];
            else if (~digit_select[1]) 
                cur_digit_val <= num[27:24];
            else if (~digit_select[0]) 
                cur_digit_val <= num[31:28];
            else
                cur_digit_val <= num[3:0];
        end
    end

endmodule

module gen_digit_code(
    input   [3:0] num,
    output  [7:0] code
    );

    reg [7:0] code_reg;
    assign code = code_reg;

    always @(*) begin
        case (num)
            0:   code_reg <= 8'hC0;
            1:   code_reg <= 8'hF9;
            2:   code_reg <= 8'hA4;
            3:   code_reg <= 8'hB0;
            4:   code_reg <= 8'h99;
            5:   code_reg <= 8'h92;
            6:   code_reg <= 8'h82;
            7:   code_reg <= 8'hF8;
            8:   code_reg <= 8'h80;
            9:  code_reg <= 8'h98;
            10:  code_reg <= 8'h88;
            11:  code_reg <= 8'h83;
            12:  code_reg <= 8'hA7;
            13:  code_reg <= 8'hA1;
            14:  code_reg <= 8'h86;
            15:  code_reg <= 8'h8E;
            default: code_reg <= 8'hFF;
        endcase
    end

endmodule
