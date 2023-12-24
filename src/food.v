`timescale 1ns/1ps
module food (
    input clk,
    input rst,
    input get_food,
    input [1:0] game_state,
    output reg [4:0] food_x,
    output reg [4:0] food_y
);
    always @(posedge clk)
    begin
        if(rst == 1) begin
            food_x <= 5'd0;
            food_y <= 5'd0;
        end
        else if(game_state == 2'b01) begin
            if(get_food == 1) begin
                food_x <= {$random} % 32;
                food_y <= {$random} % 24;
            end
        end
    end
endmodule