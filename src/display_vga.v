`timescale 1ns / 1ps
module display_vga (
    input clk,
    input [4:0] food_x,
    input [4:0] food_y,
    input [319:0] snake_x_1dim,
    input [319:0] snake_y_1dim,
    input [5:0] snake_length,
    input [1:0] game_state,
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

    localparam NONE_COLOR = 12'h000;
    localparam APPLE_COLOR = 12'hfff;
    localparam SNAKE_COLOR = 12'hf00;


    reg [4:0] snake_x_reg[63:0];
    reg [4:0] snake_y_reg[63:0];

    integer i;
    always @(snake_x_1dim, snake_y_1dim) begin
        for (i = 0; i < 64; i = i + 1) begin
            snake_x_reg[i] <= snake_x_1dim[i*5+4-:5];
            snake_y_reg[i] <= snake_y_1dim[i*5+4-:5];
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

    always @(posedge clk) begin
        if (game_state == INITIAL) begin
            vga_in <= 12'b100010001000;
            clrn   <= 1'b1;
        end else if (game_state == RUNNING) begin
            for (i = 0; i < snake_length; i = i + 1) begin
                if(snake_x_reg[i] * 20 <= x_addr &&
                   snake_x_reg[i] * 20 + 20 > x_addr &&
                   snake_y_reg[i] * 20 <= y_addr &&
                   snake_y_reg[i] * 20 + 20 > y_addr) begin
                    pixel_flag <= SNAKE;
                end
            end

            if(food_x * 20 <= x_addr && food_x * 20 + 20 > x_addr &&
               food_y * 20 <= y_addr && food_y * 20 + 20 > y_addr) begin
                pixel_flag <= APPLE;
            end else begin
                pixel_flag <= NONE;
            end

            if (pixel_flag == SNAKE) begin
                vga_in <= SNAKE_COLOR;
                clrn   <= 1'b1;
            end else if (pixel_flag == APPLE) begin
                vga_in <= APPLE_COLOR;
                clrn   <= 1'b1;
            end else begin
                vga_in <= NONE_COLOR;
                clrn   <= 1'b1;
            end
        end else if (game_state == DIE) begin
            vga_in <= 12'b100010001000;
            clrn   <= 1'b1;
        end else begin
            vga_in <= 12'h000;
            clrn   <= 1'b0;
        end
    end

endmodule
