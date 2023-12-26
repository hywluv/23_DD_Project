`timescale 1ns/1ps
module score(
    input clk,
    input rst,
    input [1:0] game_state,
    input get_food,
    output [7:0] AN,
    output [7:0] seg,

);
    reg [15:0] score = 0;

    if(get_food == 1 && game_state == 2'b00) begin
        score <= score + 1;
    end
    always @(game_state) begin
        if(game_state == 2'b10 || game_state == 2'b00) begin
            score <= 0;
        end
    end

    Displaynumber m0(.clk(clk), .hexs(score), .LEs(4'b0000), .points(4'b0000), 
                    .rst(1'b0), .AN(AN),.SEGMENT(SEGMENT)); 
endmodule