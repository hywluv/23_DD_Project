`timescale 1ns / 1ps
module score (
    input clk,
    input [1:0] game_state,
    input get_food,
    input rst,
    output [3:0] AN,
    output [7:0] SEG

);

    reg [15:0] score = 0;
    wire [15:0] bcd;

    always @(negedge get_food) begin
        if(game_state == 2'b00) score <= score + 1;
        else score <= 0;
    end

    bin2bcd b0 (
        .bin(score[7:0]),
        .bcd(bcd[9:0])
    );

    Displaynumber m0 (
        .clk(clk),
        .hexs(bcd), // 4'b0000
        .LEs(4'b0000),
        .points(4'b0000),
        .rst(1'b0),
        .AN(AN),
        .SEGMENT(SEG)
    );
endmodule
