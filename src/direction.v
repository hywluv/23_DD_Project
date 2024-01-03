module direction (
    input clk,
    input up,
    input down,
    input right,
    input left,
    // input [4:0] keyCode;
    output reg [1:0] direction
);

    localparam UP = 2'b00;
    localparam DOWN = 2'b01;
    localparam RIGHT = 2'b10;
    localparam LEFT = 2'b11;

    always @(posedge clk) begin
        if (up && direction != DOWN) direction <= UP;
        else if (down && direction != UP) direction <= DOWN;
        else if (right && direction != LEFT) direction <= RIGHT;
        else if (left && direction != RIGHT) direction <= LEFT;
    end
endmodule
