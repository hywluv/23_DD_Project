`timescale 1ns/1ps
module top (
    input clk,
    input rst,
    input up, down, right, left, // direction button
    input pause, // pause button
    input slow, // slow button
    output [7:0] AN, // 数码管使能
    output [7:0] seg, // 数码管输出
    output [11:0] vga, // VGA输出
    output h_sync,v_sync // VGA扫描信号
);
    /* 最后视频大小是？
    扫描信号800*525 有效长度640*480
    目前使用640*480进行制作
    坐标大小为32*24 每一个坐标对应20*20的方块
    蛇的长度 max 64
    横坐标10位寄存器，纵坐标9位寄存器
    */
    wire clk_vga; // VGA模块的时钟信号
    wire [1:0] game_state; // 游戏状态
    wire [1:0] next_direction; // 下一个方向
    wire [1:0] current_direction; // 当前方向

    wire hit_boundary; // 撞墙
    wire hit_self; // 撞自己

    // define states and directions
    localparam RUNNING = 2'b00; // 运行状态
    localparam DIE = 2'b01; // 死亡状态
    localparam INITIAL = 2'b10; // 初始状态

    localparam UP = 2'b00;
    localparam DOWN = 2'b01;
    localparam RIGHT = 2'b10;
    localparam LEFT = 2'b11;

    wire get_food; // 获取食物
    wire [4:0] food_x; // 食物的横坐标
    wire [4:0] food_y; // 食物的纵坐标

    clk_vga m0(
        .clk(clk),
        .clk_vga(clk_vga)
    ); // 生成VGA时钟分频 50MHz -> 25MHz

    direction m1(
        .clk(clk),
        .rst(rst),
        .up(up),
        .down(down),
        .right(right),
        .left(left),
        .direction(next_direction)
    ); // 方向控制
    snake m2(

    );  //  蛇的运动方向控制 死亡检测
    food m3(
        .clk(clk),
        .rst(rst),
        .get_food(get_food),
        .food_x(food_x),
        .food_y(food_y)
    );   //  食物的生成
    score m4();  //  计分
    fsm m5(
        .clk(clk),
        .rst(rst),
        .up(up),
        .down(down),
        .right(right),
        .left(left),
        .hit_boundary(hit_boundary),
        .hit_self(hit_self),
        .game_state(game_state)
    );    //  状态机

endmodule