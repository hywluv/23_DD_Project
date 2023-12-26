`timescale 1ns/1ps
module snake (
    input clk,
    input pause,
    input slow,
    input [1:0] next_direction,
    input [1:0] game_state,
    input [4:0] food_x, // 0 - 31
    input [4:0] food_y, // 0 - 23
    output reg [1:0] current_direction,
    output  [319:0] snake_x_1dim, // 长度64 * 5 = 320
    output  [319:0] snake_y_1dim, // 高度64 * 5 = 320
    output reg [5:0] snake_length, // 长度 max 64
    output reg hit_boundary, // 撞墙
    output reg hit_self, // 撞自己
    output reg get_food // 获取食物
);
    localparam RUNNING = 2'b00; // 运行状态
    localparam DIE = 2'b01; // 死亡状态
    localparam INITIAL = 2'b10; // 初始状态

    localparam UP = 2'b00;
    localparam DOWN = 2'b01;
    localparam RIGHT = 2'b10;
    localparam LEFT = 2'b11;

    reg [4:0] snake_x [63:0];
    reg [4:0] snake_y [63:0];
    genvar i;
    generate for (i=0;i<64;i=i+1) begin
        assign snake_x_1dim[i*5+4:i*5] = snake_x[i];
        assign snake_y_1dim[i*5+4:i*5] = snake_y[i];
    end endgenerate

    reg [31:0] velocity_cnt = 25_000_000*(1 + slow); // 1s
    reg [31:0] cnt1;
    

    always @(posedge clk) begin
        if(game_state == INITIAL) begin
            snake_length <= 5'd3;
            snake_x[0] <= 5'd15;
            snake_y[0] <= 5'd9;
            snake_x[1] <= 5'd15;
            snake_y[1] <= 5'd10;
            snake_x[2] <= 5'd15;
            snake_y[2] <= 5'd11;
            cnt1 <= 0;
            hit_boundary <= 0;
            hit_self <= 0;
            get_food <= 0;
        end
        else if(game_state == RUNNING) begin
            if(cnt1 < velocity_cnt) begin
                cnt1 <= cnt1 + 1;
            end else begin
                cnt1 <= 0;
                if(next_direction == UP) begin
                    snake_x[0] <= snake_x[0];
                    snake_y[0] <= snake_y[0] + 1;
                end
                else if(next_direction == DOWN) begin
                    snake_x[0] <= snake_x[0];
                    snake_y[0] <= snake_y[0] - 1;
                end
                else if(next_direction == RIGHT) begin
                    snake_x[0] <= snake_x[0] + 1;
                    snake_y[0] <= snake_y[0];
                end
                else if(next_direction == LEFT) begin
                    snake_x[0] <= snake_x[0] - 1;
                    snake_y[0] <= snake_y[0];
                end
                for(i=1;i<snake_length;i=i+1) begin
                    snake_x[i] <= snake_x[i-1];
                    snake_y[i] <= snake_y[i-1];
                end
                if(snake_x[0] < 0 || snake_x[0] > 31 || snake_y[0] < 0 || snake_y[0] > 23) begin
                    hit_boundary <= 1;
                end else begin
                    hit_boundary <= 0;
                end
                for(i=1;i<snake_length;i=i+1) begin
                    if(snake_x[0] == snake_x[i] && snake_y[0] == snake_y[i]) begin
                        hit_self <= 1;
                    end
                end
                if(snake_x[0] == food_x && snake_y[0] == food_y) begin
                    get_food <= 1;
                    snake_length <= snake_length + 1;
                end else begin
                    get_food <= 0;
                end
            end
        end
        else

    end
endmodule