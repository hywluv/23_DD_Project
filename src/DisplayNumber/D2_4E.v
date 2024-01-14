/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : D2_4E                                                        **
 **                                                                          **
 *****************************************************************************/

module D2_4E( AN,
              E,
              scan );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       E;
   input [1:0] scan;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] AN;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [1:0] s_logisimBus13;
   wire [3:0] s_logisimBus14;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
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
   assign s_logisimBus13[1:0] = scan;
   assign s_logisimNet2       = E;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign AN = s_logisimBus14[3:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // 非门
   assign s_logisimNet1 = ~s_logisimBus13[1];

   // 非门
   assign s_logisimNet8 = ~s_logisimBus13[0];

   // 非门
   assign s_logisimBus14[0] = ~s_logisimNet9;

   // 非门
   assign s_logisimBus14[1] = ~s_logisimNet10;

   // 非门
   assign s_logisimBus14[2] = ~s_logisimNet11;

   // 非门
   assign s_logisimBus14[3] = ~s_logisimNet12;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_1 (.input1(s_logisimNet1),
               .input2(s_logisimNet2),
               .input3(s_logisimNet8),
               .result(s_logisimNet9));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_2 (.input1(s_logisimNet1),
               .input2(s_logisimNet2),
               .input3(s_logisimBus13[0]),
               .result(s_logisimNet10));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_3 (.input1(s_logisimNet8),
               .input2(s_logisimNet2),
               .input3(s_logisimBus13[1]),
               .result(s_logisimNet11));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_4 (.input1(s_logisimBus13[1]),
               .input2(s_logisimNet2),
               .input3(s_logisimBus13[0]),
               .result(s_logisimNet12));


endmodule
