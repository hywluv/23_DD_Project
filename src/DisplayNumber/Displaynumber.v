/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Displaynumber                                                **
 **                                                                          **
 *****************************************************************************/

module Displaynumber( AN,
                      LEs,
                      SEGMENT,
                      clk,
                      hexs,
                      points,
                      rst );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0]  LEs;
   input        clk;
   input [15:0] hexs;
   input [3:0]  points;
   input        rst;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] AN;
   output [7:0] SEGMENT;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0]  s_logisimBus0;
   wire [15:0] s_logisimBus16;
   wire [3:0]  s_logisimBus17;
   wire [3:0]  s_logisimBus18;
   wire [31:0] s_logisimBus21;
   wire [3:0]  s_logisimBus22;
   wire [7:0]  s_logisimBus23;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet19;
   wire        s_logisimNet2;
   wire        s_logisimNet20;
   wire        s_logisimNet3;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet8;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus16[15:0] = hexs;
   assign s_logisimBus17[3:0]  = points;
   assign s_logisimBus18[3:0]  = LEs;
   assign s_logisimNet19       = clk;
   assign s_logisimNet20       = rst;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign AN      = s_logisimBus0[3:0];
   assign SEGMENT = s_logisimBus23[7:0];

   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   Clk_Div   Clk_Div_1 (.clk(s_logisimNet19),
                        .clkdiv(s_logisimBus21[31:0]),
                        .rst(s_logisimNet20));

   DisplaySync   DisplaySync_1 (.AN(s_logisimBus0[3:0]),
                                .Hexout(s_logisimBus22[3:0]),
                                .LE(s_logisimNet5),
                                .hexin(s_logisimBus16[15:0]),
                                .lein(s_logisimBus18[3:0]),
                                .p(s_logisimNet2),
                                .pointin(s_logisimBus17[3:0]),
                                .scan(s_logisimBus21[18:17]));

   MyMC14495   MyMC14495_1 (.D0(s_logisimBus22[0]),
                            .D1(s_logisimBus22[1]),
                            .D2(s_logisimBus22[2]),
                            .D3(s_logisimBus22[3]),
                            .LE(s_logisimNet5),
                            .a(s_logisimBus23[0]),
                            .b(s_logisimBus23[1]),
                            .c(s_logisimBus23[2]),
                            .d(s_logisimBus23[3]),
                            .e(s_logisimBus23[4]),
                            .f(s_logisimBus23[5]),
                            .g(s_logisimBus23[6]),
                            .p(s_logisimBus23[7]),
                            .point(s_logisimNet2));

endmodule
