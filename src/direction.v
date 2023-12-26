module direction (
    input clk,
    input up,
    input down,
    input right,
    input left,
    output reg [1:0] direction
);
    initial begin
        direction <= 2'b00;
    end
    always @(posedge clk) begin
        if (up == 1) direction <= 2'b00;
        else if (down == 1) direction <= 2'b01;
        else if (right == 1) direction <= 2'b10;
        else if (left == 1) direction <= 2'b11;
    end
endmodule
