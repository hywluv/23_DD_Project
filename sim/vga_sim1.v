`timescale 1ns/1ps
module vga_sim1();
    reg clk;
    reg [4:0] food_x;
    reg [4:0] food_y;
    reg [319:0] snake_x_1dim;
    reg [319:0] snake_y_1dim;
    reg [5:0] snake_length;
    reg [1:0] game_state;
    wire [3:0] r;
    wire [3:0] g;
    wire [3:0] b;
    wire h_sync;
    wire v_sync;

    display_vga m0 (
        .clk(clk),
        .food_x(food_x),
        .food_y(food_y),
        .snake_x_1dim(snake_x_1dim),
        .snake_y_1dim(snake_y_1dim),
        .snake_length(snake_length),
        .game_state(game_state),

        .r(r),
        .g(g),
        .b(b),
        .h_sync(h_sync),
        .v_sync(v_sync)
    );
    initail begin
        clk = 0;
        food_x = 20;
        food_y = 20;
        snake_x_1dim = 10;
        snake_y_1dim = 10;
        snake_length = 1;
        game_state = 2'b00;
    end
    always begin
        #10 clk = ~clk;
    end
endmodule