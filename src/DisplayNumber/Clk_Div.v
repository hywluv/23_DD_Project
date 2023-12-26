/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Clk_Div                                                      **
 **                                                                          **
 *****************************************************************************/

module Clk_Div(
    input clk,
    input rst,
    output reg[31:0]clkdiv
    );
    always @(posedge clk or posedge rst) begin
        if(rst) clkdiv<=0;
        else clkdiv<=clkdiv+1'b1;
    end
endmodule