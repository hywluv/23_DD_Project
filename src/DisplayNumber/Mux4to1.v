/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Mux4to1                                                      **
 **                                                                          **
 *****************************************************************************/

module Mux4to1( in0,
                in1,
                in2,
                in3,
                output1,
                scan );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       in0;
   input       in1;
   input       in2;
   input       in3;
   input [1:0] scan;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output output1;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [1:0] s_logisimBus17;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet2;
   wire       s_logisimNet3;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus17[1:0] = scan;
   assign s_logisimNet4       = in0;
   assign s_logisimNet5       = in1;
   assign s_logisimNet6       = in2;
   assign s_logisimNet7       = in3;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign output1 = s_logisimNet10;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // 非门
   assign s_logisimNet12 = ~s_logisimBus17[0];

   // 非门
   assign s_logisimNet0 = ~s_logisimBus17[1];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet0),
               .input2(s_logisimBus17[0]),
               .result(s_logisimNet13));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet12),
               .input2(s_logisimBus17[1]),
               .result(s_logisimNet14));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus17[1]),
               .input2(s_logisimBus17[0]),
               .result(s_logisimNet15));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet0),
               .input2(s_logisimNet12),
               .result(s_logisimNet16));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet16),
               .input2(s_logisimNet4),
               .result(s_logisimNet1));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet13),
               .input2(s_logisimNet5),
               .result(s_logisimNet9));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet14),
               .input2(s_logisimNet6),
               .result(s_logisimNet8));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet15),
               .input2(s_logisimNet7),
               .result(s_logisimNet2));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_9 (.input1(s_logisimNet1),
               .input2(s_logisimNet9),
               .input3(s_logisimNet8),
               .input4(s_logisimNet2),
               .result(s_logisimNet10));


endmodule
