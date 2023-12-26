`timescale 1ns / 1ps
module food (
    input clk,
    input get_food,
    input [1:0] game_state,
    output reg [4:0] food_x,
    output reg [4:0] food_y
);
    always @(posedge clk) begin
        if (game_state == 2'b10 || game_state == 2'b00 && get_food) begin
            food_x <= {$random} % 32;
            food_y <= {$random} % 24;
        end
    end

endmodule
