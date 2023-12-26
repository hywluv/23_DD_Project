`timescale 1ns / 1ps

module fsm (
    input clk,
    input rst,
    input up,
    input down,
    input right,
    input left,
    input hit_boundary,
    input hit_self,
    output reg [1:0] game_state
);
    localparam RUNNING = 2'b00;
    localparam DIE = 2'b01;
    localparam INITIAL = 2'b10;

    reg [31:0] cnt1;
    reg [31:0] cnt2;

    initial begin
        game_state <= INITIAL;
        cnt1 <= 0;
        cnt2 <= 0;
    end

    always @(posedge clk) begin
        if (rst) game_state <= INITIAL;
        if (game_state == RUNNING) begin
            if (hit_boundary || hit_self) begin
                game_state <= DIE;
            end
        end else if (game_state == DIE) begin
            if (cnt2 < 100_000_000) begin  // 2s
                cnt2 <= cnt2 + 1;
            end else begin
                cnt2 <= 0;
                game_state <= INITIAL;
            end
        end else if (game_state == INITIAL && (up || down || left || right)) begin
            game_state <= RUNNING;
        end
    end
endmodule
