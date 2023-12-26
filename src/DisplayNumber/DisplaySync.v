/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : DisplaySync                                                  **
 **                                                                          **
 *****************************************************************************/

module DisplaySync( AN,
                    Hexout,
                    LE,
                    hexin,
                    lein,
                    p,
                    pointin,
                    scan );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [15:0] hexin;
   input [3:0]  lein;
   input [3:0]  pointin;
   input [1:0]  scan;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] AN;
   output [3:0] Hexout;
   output       LE;
   output       p;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [1:0]  s_logisimBus0;
   wire [15:0] s_logisimBus2;
   wire [3:0]  s_logisimBus20;
   wire [3:0]  s_logisimBus3;
   wire [3:0]  s_logisimBus4;
   wire [3:0]  s_logisimBus9;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus0[1:0]  = scan;
   assign s_logisimBus2[15:0] = hexin;
   assign s_logisimBus3[3:0]  = pointin;
   assign s_logisimBus4[3:0]  = lein;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign AN     = s_logisimBus20[3:0];
   assign Hexout = s_logisimBus9[3:0];
   assign LE     = s_logisimNet19;
   assign p      = s_logisimNet14;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // µÁ‘¥
   assign  s_logisimNet1  =  1'b1;


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   Mux4to1b4   Mux4to1b4_1 (.input0(s_logisimBus2[3:0]),
                            .input1(s_logisimBus2[7:4]),
                            .input2(s_logisimBus2[11:8]),
                            .input3(s_logisimBus2[15:12]),
                            .output1(s_logisimBus9[3:0]),
                            .scan(s_logisimBus0[1:0]));

   Mux4to1   Mux4to1_1 (.in0(s_logisimBus3[0]),
                        .in1(s_logisimBus3[1]),
                        .in2(s_logisimBus3[2]),
                        .in3(s_logisimBus3[3]),
                        .output1(s_logisimNet14),
                        .scan(s_logisimBus0[1:0]));

   Mux4to1   Mux4to1_2 (.in0(s_logisimBus4[0]),
                        .in1(s_logisimBus4[1]),
                        .in2(s_logisimBus4[2]),
                        .in3(s_logisimBus4[3]),
                        .output1(s_logisimNet19),
                        .scan(s_logisimBus0[1:0]));

   D2_4E   D2_4E_1 (.AN(s_logisimBus20[3:0]),
                    .E(s_logisimNet1),
                    .scan(s_logisimBus0[1:0]));

endmodule
