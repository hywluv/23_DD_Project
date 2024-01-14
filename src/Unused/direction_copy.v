module direction_matrix (
    input clk,
    input [4:0] keyCode,
    input keyReady,
    output reg [1:0] direction
);

    localparam UP = 2'b00;
    localparam DOWN = 2'b01;
    localparam RIGHT = 2'b10;
    localparam LEFT = 2'b11;

    initial begin
        direction <= UP;
    end

    reg wasReady;
	always @(posedge clk) begin
		case (keyCode)
			5'hc: direction <= LEFT;
			5'he: direction <= RIGHT;
			5'h9: direction <= UP;
			5'h11: direction <= DOWN;
            default: direction <= direction;
		endcase
	end

endmodule
