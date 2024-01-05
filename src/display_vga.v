`timescale 1ns / 1ps
module display_vga (
    input clk,
    input [4:0] food_x,
    input [4:0] food_y,
    input [319:0] snake_x_1dim,
    input [319:0] snake_y_1dim,
    input [5:0] snake_length,
    input [1:0] game_state,
    input food_display,
    output [3:0] r,
    output [3:0] g,
    output [3:0] b,
    output h_sync,
    output v_sync
);

    wire rdn;
    wire [9:0] x_addr;
    wire [8:0] y_addr;

    // define states and directions
    localparam RUNNING = 2'b00;  // 运行状态
    localparam DIE = 2'b01;  // 死亡状态
    localparam INITIAL = 2'b10;  // 初始状态

    localparam UP = 2'b00;
    localparam DOWN = 2'b01;
    localparam RIGHT = 2'b10;
    localparam LEFT = 2'b11;

    localparam NONE = 2'b00;
    localparam APPLE = 2'b01;
    localparam SNAKE = 2'b10;
    localparam WALL = 2'b11;

    localparam NONE_COLOR = 12'h000;
    localparam APPLE_COLOR = 12'hfff;
    localparam SNAKE_COLOR = 12'hff0;

    reg [3:0] snake_r;
    reg [3:0] snake_g;
    reg [3:0] snake_b;
    reg [11:0] snake_color;

    reg [4:0] snake_x_reg[63:0];
    reg [4:0] snake_y_reg[63:0];

    // 生成二维数组
    integer i;
	always @(snake_x_1dim,snake_y_1dim)
	begin
	for (i=0;i<64;i=i+1)
		begin
			snake_x_reg[i]<=snake_x_1dim[5*i+:5];
			snake_y_reg[i]<=snake_y_1dim[5*i+:5];
		end
	end

    reg [11:0] vga_in;
    reg clrn;

    vgac m0 (
        .vga_clk(clk),
        .clrn(clrn),
        .d_in(vga_in),
        .col_addr(x_addr),
        .row_addr(y_addr),
        .rdn(rdn),
        .r(r),
        .g(g),
        .b(b),
        .hs(h_sync),
        .vs(v_sync)
    );

    reg [1:0] pixel_flag;

    wire [18:0] address;
    wire [11:0] data_ini;
    wire [11:0] data_fail;

    wire [8:0] address_wall;
    wire [11:0] data_wall;

    assign address = x_addr + y_addr * 640;
    assign address_wall = (x_addr % 20) + (y_addr % 20) * 20;

    blk_mem_gen_0 INIT_LOAD (
      .clka(clk),    // input wire clka
      .wea(1'b0),      // input wire [0 : 0] wea 读写选择 0读 1写
      .addra(address),  // input wire [18 : 0] addra
      .dina(0),    // input wire [15 : 0] dina
      .douta(data_ini)  // output wire [15 : 0] douta
    );

    blk_mem_gen_1 FAIL_LOAD (
      .clka(clk),    // input wire clka
      .wea(1'b0),      // input wire [0 : 0] wea 读写选择 0读 1写
      .addra(address),  // input wire [18 : 0] addra
      .dina(0),    // input wire [15 : 0] dina
      .douta(data_fail)  // output wire [15 : 0] douta
    );

    blk_mem_gen_2 WALL_LOAD (
      .clka(clk),    // input wire clka
      .wea(1'b0),      // input wire [0 : 0] wea 读写选择 0读 1写
      .addra(address_wall),  // input wire [18 : 0] addra
      .dina(0),    // input wire [15 : 0] dina
      .douta(data_wall)  // output wire [15 : 0] douta
    );

    integer j;
    always @(posedge clk) begin
        if (game_state == INITIAL) begin
            vga_in <= {data_ini[3:0],data_ini[7:4],data_ini[11:8]};
            clrn   <= 1'b1;
        end else if (game_state == RUNNING) begin
            pixel_flag <= NONE;

            // 食物标签
            if (food_x * 20 <= x_addr && food_x * 20 + 20 > x_addr &&
                food_y * 20 <= y_addr && food_y * 20 + 20 > y_addr && food_display) begin
                pixel_flag <= APPLE;
            end

            // 蛇标签，覆盖食物标签
            for (j = 0; j < snake_length; j = j + 1) begin
                if (snake_x_reg[j] * 20 <= x_addr &&
                    snake_x_reg[j] * 20 + 20 > x_addr &&
                    snake_y_reg[j] * 20 <= y_addr &&
                    snake_y_reg[j] * 20 + 20 > y_addr) begin
                    pixel_flag <= SNAKE;
                    if (j==0) begin
                        snake_r <= 4'hA;
                        snake_g <= 4'h2;
                        snake_b <= 4'hF;
                    end else begin
                        snake_r <= 4'hF - j/3;
                        snake_g <= 4'h6 + j/7;
                        snake_b <= 4'hE - j/5;
                    end
                end
            end

            // 墙标签，覆盖蛇标签
            if (x_addr < 20 || x_addr >= 620 || y_addr < 20 || y_addr >= 460) begin
                pixel_flag <= WALL;
            end

            
            if (pixel_flag == SNAKE) begin
                vga_in <= {snake_b,snake_g,snake_r};
                clrn   <= 1'b1;
            end else if (pixel_flag == APPLE) begin
                vga_in <= APPLE_COLOR;
                clrn   <= 1'b1;
            end else if (pixel_flag == WALL)begin
                vga_in <= {12'hECA};
                clrn   <= 1'b1;
            end else begin
                vga_in <= NONE_COLOR;
                clrn   <= 1'b1;
            end 
        end else if (game_state == DIE) begin
            vga_in <= {data_fail[3:0],data_fail[7:4],data_fail[11:8]};
            clrn   <= 1'b1;
        end else begin
            vga_in <= 12'h000;
            clrn   <= 1'b0;
        end
    end
    

endmodule
