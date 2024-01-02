`timescale 1ns / 1ps
module food (
    input clk,
    input get_food,
    input [1:0] game_state,
    output reg [4:0] food_x,
    output reg [4:0] food_y
);
    reg [6:0] cnt;
    always @(posedge clk) begin
        if (cnt < 96) cnt <= cnt + 1;
        else cnt <= 0;
        if (game_state == 2'b10 || game_state == 2'b00 && get_food) begin
            food_x <= cnt % 32;
            food_y <= cnt % 24;
        end
    end

endmodule
