`timescale 1ns / 1ps
module top (
    input clk,
    input rst,
    // input btn_up,
    // input btn_down,
    // input btn_right,
    // input btn_left,  // direction button
    // input start,  // start button
    input pause,  // pause button
    input slow,  // slow button
    input ps2_clk,
    input ps2_data,
    output [3:0] AN,  // 数码管使能
    output [7:0] SEG,  // 数码管输出
    output [11:0] vga,  // VGA输出
    output h_sync,
    output v_sync,  // VGA扫描信号
    output btnx4
    // inout [4:0]BTN_X,
	// inout [3:0]BTN_Y,
    // output buzzer
);
    /* 最后视频大小是？
    扫描信号800*525 有效长度640*480
    目前使用640*480进行制作
    坐标大小为32*24 每一个坐标对应20*20的方块
    蛇的长度 max 64
    横坐标10位寄存器，纵坐标9位寄存器
    */
    // assign buzzer = 1'b1;
    reg [31:0]clkdiv;
	always@(posedge clk) begin
		clkdiv <= clkdiv + 1'b1;
	end

    // wire [4:0] keyCode;
	// wire keyReady;
	// Keypad k0 (.clk(clkdiv[15]), .keyX(BTN_Y), .keyY(BTN_X), .keyCode(keyCode), .ready(keyReady));

    wire clk_vga;  // VGA模块的时钟信号
    wire [1:0] game_state;  // 游戏状态
    wire [1:0] next_direction;  // 下一个方向
    wire [1:0] current_direction;  // 当前方向

    wire hit_boundary;  // 撞墙
    wire hit_self;  // 撞自己

    // define states and directions
    localparam RUNNING = 2'b00;  // 运行状态
    localparam DIE = 2'b01;  // 死亡状态
    localparam INITIAL = 2'b10;  // 初始状态

    localparam UP = 2'b00;
    localparam DOWN = 2'b01;
    localparam RIGHT = 2'b10;
    localparam LEFT = 2'b11;

    wire get_food;  // 获取食物
    wire [4:0] food_x;  // 食物的横坐标
    wire [4:0] food_y;  // 食物的纵坐标

    wire [5:0] snake_length;  // 蛇的长度
    wire [319:0] snake_x_1dim;  // 蛇的横坐标
    wire [319:0] snake_y_1dim;  // 蛇的纵坐标

    assign btnx4 = 0;

    wire up_pb;
    wire down_pb;
    wire right_pb;
    wire left_pb;

    

    // assign up_pb = btn_up;
    // assign down_pb = btn_down;
    // assign left_pb = btn_left;
    // assign right_pb = btn_right;

    // ila_0 m11(
    //     .clk(clk),
    //     .probe0({up_pb,down_pb,right_pb,left_pb}),
    //     .probe1(game_state)
    // );
    // pbdebounce m7 (
    //     .clk(clkdiv[15]),
    //     .button(btn_up),
    //     .pbreg(up_pb)
    // );  // 按键消抖

    // pbdebounce m8 (
    //     .clk(clkdiv[15]),
    //     .button(btn_down),
    //     .pbreg(down_pb)
    // );  // 按键消抖

    // pbdebounce m9 (
    //     .clk(clkdiv[15]),
    //     .button(btn_right),
    //     .pbreg(right_pb)
    // );  // 按键消抖

    // pbdebounce m10 (
    //     .clk(clkdiv[15]),
    //     .button(btn_left),
    //     .pbreg(left_pb)
    // );  // 按键消抖

    clk_vga m0 (
        .clk(clk),
        .clk_vga(clk_vga)
    );  // 生成VGA时钟分频 50MHz -> 25MHz

    PS2 m12 (
        .clk(clk),
        .rst(rst),
        .ps2_clk(ps2_clk),
        .ps2_data(ps2_data),
        .up(up_pb),
        .down(down_pb),
        .right(right_pb),
        .left(left_pb)
    );  // PS2键盘
    direction m1 (
        .clk(clk),
        .up(up_pb),
        .down(down_pb),
        .right(right_pb),
        .left(left_pb),
        // .keyCode(keyCode),
        // .keyReady
        .direction(next_direction)
    );  // 方向控制

    // direction_matrix m1 (
    //     .clk(clk),
    //     .keyCode(keyCode),
    //     .keyReady(keyReady),
    //     .direction(next_direction)
    // );  // 方向控制

    snake m2 (
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
    );  //  蛇的运动方向控制 死亡检测
    food m3 (
        .clk(clk),
        .get_food(get_food),
        .game_state(game_state),
        .food_x(food_x),
        .food_y(food_y)
    );  //  食物的生成
    score m4 (
        .clk(clk),
        .game_state(game_state),
        .get_food(get_food),
        .AN(AN),
        .SEG(SEG)
    );  //  计分
    fsm m5 (
        .clk(clk),
        .rst(rst),
        .up(up_pb),
        .down(down_pb),
        .right(right_pb),
        .left(left_pb),
        // .start(start),
        .hit_boundary(hit_boundary),
        .hit_self(hit_self),
        .game_state(game_state)
    );  //  状态机

    display_vga m6 (
        .clk(clk_vga),
        .food_x(food_x),
        .food_y(food_y),
        .snake_x_1dim(snake_x_1dim),
        .snake_y_1dim(snake_y_1dim),
        .snake_length(snake_length),
        .game_state(game_state),

        .r(vga[11:8]),
        .g(vga[7:4]),
        .b(vga[3:0]),
        .h_sync(h_sync),
        .v_sync(v_sync)
    );  // VGA显示
endmodule
