module create_direction(
    input clk,
    input up_pb,
    input down_pb,
    input right_pb,
    input left_pb,
    output out_up,
    output out_down,
    output out_right,
    output out_left
);
    always @(posedge up_pb) begin
            out_up <= 1;
            out_down <= 0;
            out_right <= 0;
            out_left <= 0;
        end
    always @(posedge down_pb) begin
            out_up <= 0;
            out_down <= 1;
            out_right <= 0;
            out_left <= 0;
        end
    always @(posedge right_pb) begin
            out_up <= 0;
            out_down <= 0;
            out_right <= 1;
            out_left <= 0;
        end
    always @(posedge left_pb) begin
            out_up <= 0;
            out_down <= 0;
            out_right <= 0;
            out_left <= 1;
        end


endmodule