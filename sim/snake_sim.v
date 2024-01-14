`timescale 1ns/1ps
module snake_sim();
    reg clk;
    reg pause;
    reg slow;
    reg [1:0] next_direction;
    reg [1:0] game_state;
    reg [4:0] food_x;
    reg [4:0] food_y;
    wire [1:0] current_direction;
    wire [319:0] snake_x_1dim;
    wire [319:0] snake_y_1dim;
    wire [5:0] snake_length;
    wire hit_boundary;
    wire hit_self;
    wire get_food;

    snake m1(
        .clk(clk),
        .pause(pause),
        .slow(slow),
        .next_direction(next_direction),
        .game_state(game_state),
        .food_x(food_x),
        .food_y(food_y),
        .current_direction(current_direction),
        .snake_x_1dim(snake_x_1dim),
        .snake_y_1dim(snake_y_1dim),
        .snake_length(snake_length),
        .hit_boundary(hit_boundary),
        .hit_self(hit_self),
        .get_food(get_food)
    );
    initial begin
        clk = 0;
        pause = 0;
        slow = 0;
        next_direction = 2'b10;
        game_state = 2'b10;
        food_x = 20;
        food_y = 20;
        #50;
        game_state = 2'b00;
    end

    always begin
        #2 clk = ~clk;
    end

endmodule