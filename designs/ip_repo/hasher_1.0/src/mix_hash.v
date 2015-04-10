`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2015 02:42:05 PM
// Design Name: 
// Module Name: mix_hash
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


module mix_hash(
    input   [31:0]  num,
    input           clk,
    input           reset,
    input           start,
    output          done,
    output  [31:0]  out
    );

    reg     [3:0]   step;
    reg             done;
    reg     [31:0]  key;

    assign out = key;

    always @(posedge clk) begin
        if (~reset) begin
            step <= 0;
            done <= 0;
        end
        else begin
            if (step == 7) begin
                step <= step;
                done <= 1;
            end 
            else begin
                if (step == 0 & ~start)
                    step <= step;
                else
                    step <= step + 1;
                done <= 0;
            end
        end
    end

    always @(posedge clk) begin
        if (~reset)
            key <= num;
        else if (step == 0)
            key <= num;
        else if (step == 1)
            key <= key + ~(key <<15);
        else if (step == 2)
            key <= key ^ (key >>15);
        else if (step == 3)
            key <= key + (key << 3);
        else if (step == 4)
            key <= key ^ (key >> 6);
        else if (step == 5)
            key <= key + ~(key << 11);
        else if (step == 6)
            key <= key ^ (key >> 16);
        else if (step == 7)
            key <= key;
        else
            key <= num;
    end

endmodule
