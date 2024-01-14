// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jan  4 10:46:37 2024
// Host        : xyw-luv running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DD_exp/23_DD_Project/DD_Project/DD_Project.gen/sources_1/ip/blk_mem_gen_2/blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.70645 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_2.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_2.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "400" *) 
  (* C_READ_DEPTH_B = "400" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "400" *) 
  (* C_WRITE_DEPTH_B = "400" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_2_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20784)
`pragma protect data_block
lkTs4DF4TD3n0taedl0ReFVNdCe+nimfo7HkmM2May07EAsLHPQ2ciXGk+GeVP9ZBSlo/f+75j1g
Wnz/+rWHEHrrmNF5afq3iFJ4MkjqCbe7HrtAcYxoQbG/Ql8mcPf9U7XuQjP2/VmAQsTuqbmiwSGr
Hw0xxJrvkaWN1LxBQ3BVide3ZdDr767+XO4khlrCzBLBL/HFrIbE9IsBxlLpOh4ZqrEhewKGz/g6
iUjbFYV++rjTBnM5b+X2KwyHENzVomvFPjV0HNzZelMwIxVLsypIoxG2Mrg+F2JsbC7rF0IGXsQ/
L9G/8wZs/fyFT7m2bFCERUO95rOhVRO5UE4oTfCnpgOJ+ZRXL8unD8pox7nMvbnC0uD5Bs0W65Kp
egjP4rJyo9rL1gAtkKzSwV/3gjyCIZtd6+OuOtgTFVCAtJoen+77/FFjdM+V9A0mrVTJRm8+zgIt
GphNunOQkC7talAtZ4DHtdOHEAlW7bXKY5K505Kc2W56DQvG3jdtpLg1TJkCh5SDOEHJL9fickRs
zrikchLTxmQHa757UjRLc/Isicr1EQ3VhpN07C+aja5YLYQVuIpWeuzzqwd7hqjQ8M9XMvgCe33E
9dKNV+7nFMrhpKmtTqShWBKQ+BO7RiqFdvumL9/cAksKzx0NCIxg2WZucYTDzoEjXdDTbiWHecIe
bHVfLQTWSvntUFxHA9Ux+k6K1UVoYwzU1peLI5HNT6gSjUcP8/YjOysIkTHIDHWswX2htqSF+Jzg
5YjeOlc0xW+jb9g0YMAVF85AWOq7ipfnclXEpZPSNw8P0cS+SRarUUBLE5UL+JsT+/CbC5aftCIe
SNREOrFFPq2lydbYrz+RO5tVAThDSM8FeoFpM+5WK3h/pnxRsHk/ZxCyCG+SvOP2z7T0k5sUM43A
RtetTM3mGdfT2Niid3LZTnI/OkOK+LwfkN2kY8kLYuF/ddJEXtLegTIIhBEkvZeX8/TsGWqbVRSR
di4ZJeZFZINmOHjoigdTNaGpPrniOiWO99pJVZLCWj+uGsMfwxPMaWWpFEnyox30PuoGld940I2F
ObyNxjUYVoGgNsiWaNHIu+4q7cJihv6hZ6FpeOmLFclvcvK+tVJaqChOjuuibPNN6ScyPhsNqPNo
FCKTvYJM7ZbYesi+LnpWL+y+DEZVzm3jHHtDyAruRJwX/Jpw2jL62bdQJzhrLamfMrOE2EzelZWj
u2vNChy3+ARLL1mOnHONy5Kxe4pm5GFfnZtPoY9ZO5XCHf8WHmjIlk8RsooJi5q7NfpFxLWmiMxz
nFdnUDISih8T8vOwfmfJCghelX+n2/cT82CdejIVioH7PKArPNxnD0vjNPvhCljyOc5RSAFDoRAa
ueHCqZ0u9uosKn/KaP4+pGyDsemv9XdrmXuIrd3IeRDFtJ+ycUOW7ONdVQTt2gYobekuCDlyuAvR
KbkB9R9tctvan115Vso36ghFJCDAGqsIVFUz2BTvb74ODZ/yecXI71tmep20clOiGLvAqtUb/nNY
jmTQ2m455PokbZq/KQmNnseVlmeoYqxwdQt9KNV7t0sKQhylICfugzlT2mxdgiZworwpL+zb+1pH
1uMmDXlX1LSFaHL81EmmxmTf9a8JUG26UBSoUbmhj5YsYBPw2I8ugvpu+HBR/NKkDq6mFeBCNbvr
iOeKO3JZ+2fMhE5w0sGRvQwRZgRvidFFjA+7VNYB74gpoqb0uE1bnoEtbrMmwiOEvWKlB4QVmhjJ
nUz3Kg7ZYJabzUrXa+S9b4k+rGtWfGSFJASz2DRdIKTMhsnzfEVSBWYe2c9u2Pe8S6P/7Fq+Q4iJ
Gejq7XtVJngPh3GOLC0T9AcBfYyC27dDYCicD7c9yI5nDikNRvvQF+XDf4GltA3+o7tA2XHgjoQe
uKWXxiWDoM/sRMbymD0xzGzSbJ3htmtFILoUIbwhC+WhhPjiPFT7Zj5jpmd65+ek3EOdVp/1rGpe
n2dttDWUNk/9/XGkfzyHMFS9VMykKxvA2+QJ9T71HIAKVlTJa9AWvV3rVrmVm/ISkvPunpQUKzIo
IMy8xjlfXboYCGuYQPr1zwZANqpsTk4uFnjYlVEmz1TTFDjQijItSm/Pg2kjwHG/Ex8CPqK0Cbld
gnsdBEapOpmwIzahGmaClAJ6F9nKy7XIYFbrU6fxPpGi4ObTrl5s9gAK52ERNI3+mw7614OrvsfL
9mVCMtG8Fl5rvcioISBsj3ltqsduo+E6PZpNIgY3gKk4uE6IIhaRc3JG2Q7YL8krKmA7vIWoh0dc
87kLxGoZ9NVHigFKpAu4UJTHTaN0xeIVSymmLQQ62GxQrWSgKLSvIJyYG2O0NBRM54dT1FK3N2iE
w38qa3Mthvni7aMX7D/fuBPS3dUZyePvQH6rxJXV/2pkXulvG4mSeyUw8twQmV9yxkrdUMBjKuhs
mzW331oeF+fzdl2xYsQjyyPH4TEfSpZd20dTFsHrXqtn3oLOjohixU4Z+1ExYfoOUko5Rnd8Xsby
ktkrEPHDOHtqmqH2Pv7u2Rt4a1d9lqk+UU+Q9emeYAnZDqEUdjvHe2rWobjWmXrS3XG4ERckYsgB
7TBJvRTlXEneKToeSo51PwVxOU5AL4QgkZIvZ2zvpt5z4detHhpoljRJdIonpRYxkEAG8YXu6roT
nWe6eCnb0PIgZvLWaW4A6cO0ELLogq7q7qgU2icQVd30SIwt+5faGsee6EXmQT+b7ESD5ZGyQjHu
OkXEsWP8fpb4x25KV4u8dEyOyi7iUYME0Ar7umCc4K6Og9Q27ehs+q5sR+dWCyg1NE4NIZudLqBf
6N50c8BiSxsPu3xvzEU48lBZfyGtW7A2egnN1L9oHLmRf7TGbptNnoZjxOqgOWQ30xzf3tdT5YIq
V8Qy+KYcnjiBCA+tgsmuIvNFX6UKjj6lvQHI1fGjaXMgDytZiQUs1+6++QWMJS9mx116V024e/0P
C5C5BeH481V3v2KFG2+yEhYqzl/1kfwVDRTlZ1Q2jFRPta8bb7SAUYHWrM5WjjJvj1ttLuJgyDXv
YgCevsTxKhlruzIRBAtq6zuxHQT9RcKBaO0nSFZ0DzlmkiMri8/FyFpyM0wYWEDhvXcfT5+zxRhq
PdTPzQVFQHfFnZYnqHUEbTl2LTsfFbzoySwk9Qw5uSfMuq1skMBvswgVYJhkFTaiaUpISDwhbrKH
rITshJNjNSqyN4ZmwDPVTFqFCwrwGiK5v00A4bCSHoMB44mKwgtsOcDG+OJa1/rX0meNRZfH0C7Q
1gTc1yo9JlqDF5wLw4L3fnR09+CgoRPpZ2yyW4kZOOfTvUoaZwMCnEzvdZgDA2x4sI8+Qt150Koe
c/3SootBP1VapA6MW2QRD12zJ/NYiG7NHVKhs4q+NasHnuGxIoOKzoHWNPHtmA6PYPT076FSgBIP
gotMNcgcf6/Mg7o5xCLnzPzV5vm7c57Nfya+WTwCKDJnZqia2LZuw8u4kLqMQ709+nts7TY+1tOp
vLxzetfkGm8ciXeq+u8T689gdtIJlHNnAT4pJnxDyaYx54eVlzRWRvLXlVFJDK3IPUGGfmL5RB/i
pQfa4ypnG+loc5GVsFbY7eFVxDCMT8PUBB3TIwzU0UmdalVDgd6PfQwEe0kDJN1/gO3XcE4zpXs1
ZOs62FSEwwcuUII55zbcE84nDHIYR6PUUFJdcMdmqCoWgkXsEyvFrNOmX5gn3Ou0kLH0pbV4dFoD
beE0PT4gEXo/niirLHg8VmAT0vk0L6aBfwpXyR7a5a6P5A+e1O546RpohawrbgcMhC1H2LG7D+3x
/FzL/AEmHQsaUiHYNc0eKPiD1F5TjVf2lY6O12LbyJWLuqCRoeNYqzJfeKB7jQpwLYAK3/YyIoaG
9TA8esPDl0P8QSK7+fVca7VhAep/0ks2UdbORlb76pIE+80JoEzc5NemzMiwuWpSK+4Qfui5esce
AiIXNftusVefXEQe8eclA/FGbHyGB+Bbwy4OdUM5MW+GtQbpDduu63E2rJ16cnE4g0+tO83cKMKV
1S1xCyKucITuxrMdfNmdGEo17ldRU2yx9aUK7V9yEQCj2Li2RacrS5v26lEC8vwWN66pBMb72qNS
O077I9YZs5HEvUJUuiIfoNWq/Oo5x8J2DcSOPbi32ZnT4TWG1uYNCIvhCdT6edZqypUsx4kl+hLe
BGYMfbbzcnWLZhxW99cNAHoJFeUzQUjywMjC9vFrhHCsb3VtZp4AyOIizeMuOX3cxl2CTh0LnwMh
z6KqxhKPE4ImqbZguY50k602ONmXPR6OL9izwpQkLVFHkamNcANN8K87lCskc2kGdCCYh7qEAk0v
oNO5TGGrfl0la8NkF/rr04VStbfWWKs/S5YqN+JoF7fW7I5iCL1Jqaa9XAQ4VUpFByzjiZT7BOTt
OBhMkbz2yn0jRZ77X7Ud/fFR/k3DjI7usKdlDhKyi6t7c0RgySVQLEMWf00br5lQYYXT/mETooVA
Ya9vg2+6dJbidyN8h1fRX6OzYbqfQqA9FkyeV5/pTaQb6OSBSJYNIve4lA+AXdUwmg0T1YlRPSIx
WDOMllMML96wEJCjlN20REYGYGcbzDpKE9XNQX7R+VcIYU1dz84bCEuB31rmTeFEQlGjPJxShNRV
lIlUOf7Do1+PoiD5UKiq5cJVhcUpV2ce1QD+6E+CsSI65teQgTCWcspajtpyI10uGcOkK6ARVasF
96MQCXxVEydo1s/8+qT1qUukFO/AQ3/FGOiokyGsBILY/CFH8OBaacOnFEl5jA2K1zdTkSZetOB8
wEIudY38m8ZlXHYnQ2Y6j+3G+MUWNIsi6gsleRhb61RzTJXXq/oynuyWhpKin7oWC0Coq13QyFqt
RfOEI6togPof6QAMs9QQelljnr45Krun1P2FcCywcj8yZs/NI0qi4M/OYJO9fMmTdqh6H8mF0HmE
TofNqQI5Fozp5PpIf3soL/a32EOuLZ+OgjTNW5m2M/D3YDoB7nGDZGQGOfcSn/0/aV0G0n7b0d+I
TZNnxKrjS92fwSpGIVf4WT0oPp04XQ0EjicJYr9OyJP1qHEE+GXMUwFAfrdkYsSHs1WkMu0EgMIQ
6miwmntSWtXaXfFJwQ3IecjsDbJbaucl5verH+7ynlG7K3jsypFFvqbu4U6oMXCpdQGYJ8PNjJNW
eyQ9aqfrneKsS8wStLBzgvY/vPnVW0o2J9FCNiNVIrfgZOpQR2lntfRsidhWSwXE/6+IgHeEHlr6
N598+uWlNJeJx793DrCHk2qm2MSUtlL/I8jz6DvTR3vXRqzfSoLRckJ20BUJP4qFLDVGo/fBOhG2
cODtTgqsWh5V76st2Oj0O384aFBtB0CcNI0TDupKSThjKzzO+AzcFkvEi+lwSYr3+ZWVPW7sQFWg
VPjv+MDmD2Kb96wlfypm/hZGKxtqsQmWfXHY6/xqBQSR4MkoXeX9T6M7810QVUajMdoQLBXFjaz+
879ZgiItpeEfDOLTtjJmrkBsVXjG6tGNQLx8rpfep5CX+SPp8dRKNWv3gyGcu1aBx52ZTcMcG4r/
j5VTC3UeO4K2kXAW6ABynMalwPIT7s/1eWtKtF+1D00FjhcUjTl1ioaadpAhhtnKMLbkmIALNkRD
53wEgTku80tEsD3cUo56KtpMBXRF/fqiff1YbDOqmO9RJbRTkixI54XiEQxcf3/K1YIO4AGZVf6j
1oJLXZrKvj4RsXLjtMOeA0g/Lu4+68b3fimyZm1PTtRn9OvKGTjKQaI+ut6zMuuAJkf+3maZgxhw
RcCjUk6hlFEJmM0W/jvqkkKxPGsZY1AnaTi0kkTPBi//6qLVejXaD3IhboNVZYmsAm1ps5LDayuR
mECtXudd/Wcpra6OaL2R+JUzt3aRElkCXJjBvc3uCXPOBQ1T1HKpqWClf1wwA5LZjx8RDO408ojp
lcjDIZ6+sW78zDvZfrFdnFuPySPG+5S+mYs13+bNQeC9fkXrwuv7fYHJqCGCxja6FsHJKCVnzjbT
RC7tGdnAlY93f7t/VqH6z/aWKbzkKG5+G8sKJxJ1paUuK3ecxOhSOqHcQLCzYWzbCLB9G0tKT1EG
4poQllNW9Cs+470qtxVmLpRCzXscdgjB9fZDcFcm25+Q305RUF7qA97Nw93F3Q4hfePGf0tfllZ5
G+sINITk5453AgWp/Bj+lUgMfR4O0/oDNf04Xektn5ghfOdoZrkm08DNIH8v/jNwk2oM9TlPW3Az
N+CBMk9DtssUrQom/jo73FqKi3ANCmCMgOB1wY1ir8ZO3YWp1oYUBJCkCRhvaYPNG2vFJaDDofO4
S3vvOYaxCUlUQ/5S1Zx8ggV3Qq3NEDPnC+wqm5xVxKho9KiVClAZO64aYPfRMaGjIKYfOpetrHLg
chuYg8nKDIqd5oOi5Ibjyg3i8ckHk31UZGkTRIoc7m6c7+aVB3Xaz0Nn3X1l2HxJJLOoABJxJlCf
wVemJE8M1W6O6oKH5+eZxSYsiDOEYrYoyEtkUIkLjzJ5IflXR6mN69Z4pKxGsjzMmuETiV3/jO8i
RhW2QmIEAiBqBs846k/i02Ynt1EbR2FfZMLT/ZnDz2dczUjq0MkrveY4xEphtlNCLU+U73Dwts1l
YHMUNsbP82HfNr/5ga4z5+BhBfMYSxk7FupXlDjMVSz+73MDTKex0lO1YDkN6do4EKPswBUBmox2
iH/g4e+t9m8QcDx8byIlsqy4jLdAV2uSXxeAhWqhO4XEds7gvvt/ZhttNpZxM5PfuoecX/zGzn52
kaQOJeYMc/viUGOIXuWy9s6nY9eaUhAGVZUOfWJzmgqZ3cVyXg+gT/opLRdBL+pV5UuaASu3/YBN
UvtKQ/J0ADB+Hhup/lnx+9p4b/uJYkwtqe5Jp8oLN7O5/v3gZfIMD1hw4/VZ5y/LjR5Dw1l9ASph
GYA4tKwnPZzihGnLfDPZNhEzgoM3y6pgP7BT7cAt55j+2ecRbnz6Ej0CXOLZthNaNifvg12ccgQo
gxsayOAKalguqYcy/3kxcsCKLAd84qc3Tuk3MP6XKjsPKFwxXAbXGYdUYLmY0/ID1KhphC7mF7H5
dFQWlNbGPIcrgowMS6gdHOmdoxU4kgypmbBbwKtERy7dJwbRHgL73mOelAHMqwhS5GYjydnAMd64
okpEJvPpByiPhRwsvPz/D2fHhyURfgSPX+6eqAj4zTLJshvZawfZ5qsl1V6EhHT8Et7o2vhjUlAX
G0JaAryGN2GBOXiWLWATD9Kde9N+9VP/iUc7+TkmvUYNcv/YpwwIkvurJDpMZCvdqN04Q9rYNpxR
TY/ISKkKX1tyTIodwVSbrwOh8dYFO6JdL9Mw0AXj2OnWr45MwCOEAu/RHKHYFqRN1Z4Rm50QLwyr
7qBFeEjlwkrMt8wHmdwyzhoacai3LWggtZAuI4vmUFJlPlPa7z8TjuBECmosKYwQuwoBfC/GA39w
cTMl6K5X9H7FduC1Pt4ERRnTsR4lB9l8nupYrFlLTtVhyH5U8pdnKnDwGFNzBQUUQ9gBa9X4hzSx
cRz0r5aCtyGFyrw+Tkb1LplcwmkeROzNwVEpOQpkWYjSw5k9WqMJ+FtzFZrNUuLE5fK1m9SMbmNk
WD5ZYFDLBS2F5ISU4gK3CUyeqkQ93DmWFAF6DVqot7XlzqJsUy8AZ0RnhSC7LPDDphw12/7xcA/J
TNgORp2dEXWzYm3JsyTds5ePoeSr+lwscH1JKOYhXukiP4hIyqM5Z67pYCrKORnVnaeKkbjQ+xyL
V+fK3IxMMzAhhVp8Bd7ihiSqmFZEMDPTfifmDwglYPAvHuQ4WTh2PyzGiIMo++sUVH0IRhbWOGQr
iI6joYR2SgwFyCBsE8L0m1yla3R4OH4WdkCb1FvOs47/w45GsdwJqT617AQtPIpgAbRleHTAMl+S
L+4jjY0FJ+/B8YF8isMo5nd7QUSCOzqwXyWNtmQb2kd8w9qf+1rTYLWLQJptlnIHseLwpMMDk3oy
BwnujZo3jddnytlHxy5slwtAKTgKJKYkiKJHEWv9elhBtGkchOJAISobiQdLbckkYVAcaJ9i1sYt
+pGnIm9o3FDl7zWZ0MXWAjrk7SBZXDvwMV8w597Mv2BCvKvHLyv7vR8GgqQDYNjQ82TtTV9qh+wG
ChtKDfCVj+mUpID6vuRNS/UGonSIQ13tn0PryJirB/FweMkPm/2GLZgLCkXVXXFlnoFy9NEr+EXG
QCUjHdLrCiUATQ2a9PWVfHkIixMrHCpoMZbPUkBzU+d4p4sLxh6pN57NH9+RFNRJk6W5jjAmo2Oo
fsRjDAzR8dpw/sMe833IBUkOXTekyHK0twxnjXTwGatmR3/p8IwB9836x0p8AxnBiMW7tcE4XkX6
jM7gnKLlv0OWYZuBhvlJUgmV+lV9sizpuTNK/u2sCgbuoe1gW9BT7FMkSA1/sHFJS1je0vuyNO0U
V27rxwyKV2MC0CS7BA+TXAZ85nHYXk0aYYSB2MZPrVHNeoo/IJn8WhsK2arO8vHgIvOYfxjyhJta
tAYozsBphAOYSgivfiZ6/DdIpRhmGA0dbcTmQ9Aho8D0KwH/duKDWAGU8UELYGMAgvxJfW0gZnF5
gj8ynEa+xsJ0v89OUIfjmqciIRJdlpxwLyaZ0snWTGY8AH+qc0Ynp3X93mF/HilGxIu/tjKgkkg3
/w4tNw8XuKRA/eVzAyoMhD139aE1YG4tgTaXaN/RY2TY43J9AGCq8d2nL94g5q4Zad9FpwpqBcWo
NHF7SBto9c58RVUmB7qb6Z7+zwzzX/34zVxTu5/A6A4sLBsE/6Y2crWbKSgMjTk7DfcIrmWo76mv
6sqSPk829EbeROXj+QHQ+18vuKV7dx5d7CFM7zNfE7wZ6yXI+poQqZ8Xenir89+z+25kQKUZ5yNF
apRRyxQzjj6jcoVM7pEH74etcuVgaG4/e9h6mkBKTNcBDBU08jqYYbyNulJxsGRlp4/1jQsCUZ5p
YFUq+WbdpvxX5akyQ6SMW8Qg/AN+f4rK/ynBFv0K7f4UteopgelUrSiL9FCMJloc+BLWVZo4zj65
5B2p3iRuPXeG+YrCNqmGWAd7tnQd+au1CozXlxRm2ovljBNaRu9U8IFIIk2cxLKVIE1F6s6vxthb
jgN5c0HVl4bRbRortkoo3bARf2+SM9SK7XBoCeHyHjyAAv1kCl2zTViWcx4Nkd6UUWqDXLX7NnTf
a5dLSMqf3lQEcVV4TzhqYWkZlLbAtwTe9+m5Pk1j3zysS31m/elHEDr8vZmt3AfkoanEHdTUFVV0
DcTlJvuqZk58TkY8AZ+L+IaWlvDvXui+aogsx2LFndIxHeUutVU56NFZbYNJxRnYi0e+htJ3xW/J
unoI5QlFbqXkEx//FQoMFJ9gYzmHsQCTrvm3/ocDcsUqoNCzMTuRcjIBHIeuCmRi3hoIWZkmJ+IF
alw3q/rZXnuA/l1hZ56TPNstUGzdJVVNnozHOWM/3AZGZUVxx+UDdYSjHbz0W9MyXZLwZI5kyW2D
kofUYWncNDxA5R52HvCZ5EMvhoAUH9qujwvkvgpgzJ2INQOCrGPZEBgTt3nT3+zXy+jnTYcwscIn
qUronHCQh1Z83pvupr+eMcDIcwVRs1QR7kjOQ0hBwZXsC9d8jhY8wVdGJc/ckfv1QmRV4Y1nItn3
SDWsje3vJtVRZMhH5fAdrSe57pTFfrRX838BEgd3J/Ys7xCSau9jXTbiHYx8jltj8vF4sdeJ8GN7
EsAWJ8OrmagvAyiecJYgkVr+3nehxMti0GEUSJInoPwczfHvmy7RbU8yB/kE5AbE6kO+xbAgp29T
+UCUbrmi27ZPV19VblB6SvFf782WjwUyGl/up4w0vr3nnIX8cyTPa5EMILHn836f0Dn0oMWZH2v/
wCE3UdibE0vgtedgn8AJ4bbq3yUL4OiIyoMle949H25+jf19ccdxgfi5odA+Q7GCnpIB3UAq3KK1
3B0M04a4mfh92NFbXeGoHM0z1Kfqjp7EmJbJUSSez+0ZfK1PXHle3cd/E486R6YqHgd97wBi8Bka
Nuy5qzyXb38h529h5ZKd93n3Ja4RGmh6dmJIkJiE1HxIX6nGbsXgUEX1KwqQmheEHh6dzDZ6takf
F7MF699OH/J3lK1GZOe1OxdAKvAjoauYuhWOPHkHbACevs6m5sh+W2xabivu9Z26gUdXoDSNJIhe
kf6WCRc0INYbN9FYp/30TfVEARhA40ME4yRo2/+xU1I61ICJKHfEEbRqA3HGBOWdsOIib5Pbzk8C
7RRdd82eoSvs1AsgUZj2UW/gHNu8znrfAqY/xQxxBFYxiOcGCSyRF5+uC+lVS5XJYpY96MhPDTNg
obv8xIAwwlXqhV03Kl7ryyDWdvnKZJYfG15qGlnARq2kv4f8bJoE+8HL6irk8Zuh2tscW0LzL7Us
LP3zeMGOLxKSCTLBbWI/AccSRYItcfCa2KbGOlmXEQdLgNDRlzpGY7cHL5Rz/FgxkzwHKCLxKoZF
NYI2kszQUkcTEiyGTVL2tjpMa/jCCWOfIcWYeoEynekbIqmsnnagjTFgIqc7cAwZ6Fv/Eodnf3Nw
LwjsLEDu9Qyxbz2mHc4G2X003+7AXKuZVmQUz0dEkTSJlWaXMLvv6DWZJj0fEm4E2PTm0bqfOWNM
MP7T46uEGymnoD5ODlKbPe4EFLAIvG5h07fMK201UxwymQUMsmqItXeM3yyELjao+8kZ2ggi5PKS
fX6+xmqbOMkenqA1Eop+OoyLtSx1d/oamGv4sq6V603Hf8sOb/LliULAaOtscxjaV/I40bZqxkVY
v4XEYcFhx6ZMcGw5flnSDccSh0u3GbT2wOZ3Ghwv7DWxG8lAdNb2ypSEiwaOiOAX0ggrd6qeClng
p5lT26lvOGsAF3LudcDJJj5fv0tOZ1NmRtAgyXKVIz5NrHlLlU007UADTxIMHUyQx0CeMPmACa8c
hf4DBdx3+1+fwzF1jK6lkriYJkYvl4xOD4R8wVOuisp3FopxClZelz91MH1fBno5CT8yLIIatel7
P6IUk1rxQnjLiWw8JXxvI5m7Y9Wa9tv/s+8NEivhFipKKVGYpfRedCcR/KnS8wsJ5VPHm2cj6OFO
02ZB7NA4QZPWyL75iP97iI10ziGZ6sl1v/jK5+y6lpLVYUiuQSe9ghHw6X6P84Gswvq11/rTcMCR
LebepzefF+JTp+sj1eHKWBObKlSn6qAxgVhTCU9o+GekotaqTupoiKwxM16zlhTKqsIn3ZH6jape
REOfH8oVch/TTtqIuzEop4na+xn4zvSRpZwVAdaEDOJbzO4FBqlfOTZ0eaWM/oZHHErCaUAl2zku
O6xHzxwb7yt6ETouN3BKeRGw7TOBAGkGUHCP2JKUE258HaXiPfDgeYwRrUTd1pkY0ARw0eivGO/P
MEHjbfWQ0sExclF2Ojq4I8a3R9Q9jY41/LFp2jdHhabTkB2xGBViLpq/ECnjk8sfav/zys43et5E
QRORKLH1b1Ohpk6E+gN51debHEUUej4YL8zNqa453YpCLEbyhT40a0hzfwwAniI5DU171q8gtt+O
kFRoHa9y93/DteEcBVRDVPiC2JVBiSJRmn4oKS/PuF07NzIJoCfuGx5PBxKHRM/lZzgxVL0DH2uz
THpdObvrVHbnB3G45PYFRntMr7t0blgaqb53e4KcfvUxB4z6UCOq9QiKuq4lajxUxRlGUf3Iyo8K
bDQd2kv+fjyMwclhIAvTTpKQT2T73n59izmkWAm7BM0h5x+ZLeZBn1wr1/ETxdjQAbQ+GIBUQbQt
3BRDBBLLyNIIi7oMMng17OLaWSC6tVddtwPOlyykBYw0kkjCuxGF/AwTmYgm6U00LyhhL/9b1bqz
iBpKmk2YoXh8FK9pmGwP8OD7Sk1f2kwZNtSq0kOYdHUy/lzD53+rRoYez7mKZBdEjIyJTafaHiHI
CQ2axbYIqNes+I6HgSIoCEUX+dec7bAvLtV10K11p3nbJZHrVu3CFPiSMLRIcMRzySw8aJ9KWeht
owXsktVx96eApFCmtAK+zebvS3WBfkC2uhO9D/dlYOnCYO53RegrLk3ofOUEP6sfnbeo+i5A7TPK
bDe25St90kwEitES6YIMg0b2sNORcD+esmBX0DYsdvNnUSDxePWU7N2dStXPG/KTHwNNOc5X15l6
EdCOhM/Wm9jsIJQeAuSGx/sZJ203c8XrRQ85tgVaoQOARyY2k370q2BSsFBaeL5GdQx1kM0iqsbc
iTwrVXn738GAPdIbTuUOrpOP5PtlGXD0Ed23COLuVmwKU2K2wifeMvJc2z6bUZALHLUlLWM/xepf
yAqzpaVvOHxihOA9rLBtdKW7t8YEw4qjj1yzllLZskEFzHVRC02P1UWkPh0gPNy2ZXK4CpQhO/HV
pklZDfA70/Y4vjfApO9AaAQFyxJyFgQuEn7Zh3lkeF8w8BC0vCWnpZpSyREjj30vHoZUqjg8azE2
p+v0Mn4LaZu3YXBTEaEBVy1qdNoaUfCzNF2TT1fKPQslqvkoKSmCfc3rqdBF6KNbLQ2UIin7ekLj
m0kOzbk/rVVNbGhctcdniB0hodyi40Xvyek1oi2IBz5aKAMh++xyFD34YrRmyikSKZmjpTo5fvYT
0NsuYLAgWoiSLlI2FiOxL1xvSrmNALORN3JNdYHDJFo0IM+G1bOq/C6tI2EUhjxBoevIElUt0ICh
Jka1YT7Kfhhdnr1MyNLJoVnzVqU0QvqKakMkz1DHy1qidSyHiythtCxBSgrIHbmZ7UtGR71CWQQ8
1UqXNYJcOadv2ePjfC1/1eJ8VrurfH7BKmgHr+9fy6i53NhMu/fbP1FS4AOtJnqQlvcB2tBY9+/G
3CNwHVP5/WJtRaRwa7IkqpXggBoLdXVm0ktH8/B4AA5v6fLBtDnx5WLS/4j8pfR/3f+JDEUPufyP
4OyuWeQC9M2VLTrArsYz4nIlgO4oO43xihWnp35zxDLjgHMAnDS+v3+TCEL4CO9jBM71sfgGGyqJ
6Ly9CKvQ+F5NDQQaKgf13x5OXKyYogGZVOD1Ys5Qgxyf6LPnCuM6EPz9JyyFkUGPJ3QriU4vHWzM
pRCR8Nl2H59Co+xozZwfhCSBuhrdEbvUvIiJH0U548cu57TgqVdtHXRPkNUotzUbTOiG3RVGtU8/
dV23/5Pw4OB4EAC7jDhpYBh66mmNEJBcqGs3WcUAfrqeMmGPhFe1jdgIqUUKv3yNG5I2KuLNXNeC
Ot6qtDojBU/Ph4cVDX69Fc1+lZfdHD9L0AxCfzFyjegGiUu8WYeaW0V2FXciKszSI29rjEn0yyI7
f91e6QB9unTyeNjN1PtQUOP8cauiDvRIKe6GXh0P3ZjKNjNDaw3uY98ZOalXHRv5azmxrqomN/9A
J9L3EDzXCEBq4TNVpavCRUVsJYnobh7zhIbgqduTR3CafoiLEtfLtQ28s1hKB5sxGZTo4goQmt0Z
nQBbjLqz2pz2WO6rhRXWfxyQWOEIWJUDP4HtroaplqB+0Es/LM4O1O5FkKS8i8uxKxEErgoLCvSc
3eROqAEPjXDhdL1B7msrCYGAQRzfe18ZdV2iGMjKIv86uRpz+A/Th1VeYRqefQUwD6b6Of7OM1F2
LNRc1KJtPsvGTlChuqldfe1vVd4nwZkRRAQqgnWYZjv8O/6VEe4jmovSJ0O4gtIMZ1G7fC3hB7PN
op/N7G7QqnW1ov8XvEifto6Jg3ELAh1XVWBI38l4uv77XWt2e7wTsINOHt/9xc22unnZn+dSDKNO
jj+c4j4ZduRAL3WeD+MiA080lp3ycQMA+Ojq6pe8JTqPdhROC7IMYygErKhKfTVAP6wliz2RyVu5
oD9XkMwiIQD3IVuI0FG4W8osulT6iiVKUpyS3Vex4nPxQqpwuz/abzbff63ABtvUj9gnWGHmaObZ
7aZS8xDL9v2Y42LEJxR2BKF0ecShRH0l86onyDbHa0bOyedyUTHScVhMWdUgWdcw6GIwGAf4oWPF
gXxv4HRYxst/13qCkSu1/d1uhfmBwhJDxt+O1br8/oUa27QUd5iM2H25hRadtuRyiUU8oeg1vXVY
3cC/9xNvVDXmdH+f242rcXlXjh/gotLMmLjv9xX8w7NDpo+EXCXB56oJQac/Dk4edaXgAzBYZ96X
xTPn1ST9aT+/TSw88i7D7vUEm42rDnv2CyicDAiUk/g3C9nz3OfzIG8XZZh2P5rcH97qDwRWUXpY
7FH1DmCdTu1+BlwXdBBDjsZ0B381/nbU6UchvhnbTeVqjrwFjhY+/6QV/gk4pHAPnDx7BtAlOrfq
NyX4i+hCXf8ZIrlrMYHjMnpM6Ej4wrXLENLVfozrXswpwfTLviq+/0O/Klsn7DZvAWhhezDNBuOU
VGbUXVg5eyquM1dG06xMo9mmml4zACKPOcV/pOgdGqogMHKrbtE4iWjKrIufDtXd/M/ZKaU/Omgz
1e+ycp/1RSLHmKK3DRiZY3Q075UwxyTacRLyHpyWENaN1sExb4ajB4tsEowtZGFff0BqAZLFFCcD
ky+kd6P+A2IT17oMBHaMUAmLIF1gI2sBCHcOo0T3VChMVzCYFr04rMW0RzNPW9nG8he9RSY7Nka2
XA12PPTvfibAnWZrxNEUqW/0YXOAAzpZa+ENyHgCe0z40GIjxRHQ5GAHmra6lPwyq06waOwmgnHT
XVfGdLI7XKATxzPLwZ0wG0AbwyGKy5g++Mh1SAiudf1jv8XfF0fpmdcncpBQ7SM+l0YhNT5po9/S
c0NXeLUkVTeVKRoLymdhEvHWlbVPk4JUQhORiS8X/5su1XsG10QMCHCaJ0ErnQ6IZXTzSE3iayi5
x03xAL9qX8O9O5FoXd9pLbhjRo6xw5YNTRt4SHXmlJFcejfAYHvBk1HdlJfZmCoVb9YVgkQcIIij
loNYiCMe+iTG44P+vYWUQnVmxAw23m3j/ud+na2JJb2T62Um0CQn+vEqR2AvEFBmN/oBVLU6+aDw
rWgEyberVDFUSelZoiaCITHIKVV2s1GNAM9BsPN/0fPaio1xUvUslMlH7HbXla4SmbsBN/Z4e4nz
xyovXw68NZcJbaiBYH/e6OBqULQ1QCZXya2JbrTRV2xOe+JTLNeO8/TYaUATkGp0EXQRsw1VNj5+
Ul9Ffp1zt76Q93WC+GQYQjmCsZd5RWK4csxIArXdnyA1j5+cNbJfXYM3ykZfSDSD2Od8IGCdczoq
7uyWXv9VbY6MH1+pflutbicw/4TEmVkZ+nH3DIn5/wPkDlvKoMj1/kerdB0iaS7HUfHggoko3Zic
mTtWZBEX4Eg5RrUjzrHG6HuLaHZfPfd2gkzGfpWetrNNfs/rafZ+3sIUa5VmgBfjGsYu6NApR9bQ
Cr3pizYvTpkbBByLzT5nkrzL5wJmTHh7uLd5hPxwbexlhzCnP5Vnw/KnrawHUhBKwka3jSpwfl5z
Peg7vxDSWXw5pYwzk+NBTWfra2CHQoUOJS+qtWjOPXzYJlKclyBFPz25YZn7uWCbbfeTD9D8niyR
51f+1aJCxd9tCEdjozbFFLyQpxvLf+i//S4IDyJ5V28gws4o8qHL27WPXpSBOToflN/HCeaWzKcJ
FQAlU/pbYkFlYqwj2UE/6E0wvqTMT+NTqU/bUhsW69882fCE4JYEuW7iDLDN3W4rEJN52CfjG0Ha
EPw2po4midzYZsL7Fced4tjSZ0WvtTI05HcqfWEQ739s4y8DkQ0w2ouLhfqzMiQZfa3RRc1Vj9ok
Rkis5fFSffUCPf8WGctsKuGnb6H4v3vEWiSXpF5KIOkS71y4WaAFUH20EmGuA0SL9JCEXnP/dxbn
ke4/nYv3LplMh+7H02SgZLDb+IZGmg7U4356nyLARlIzXM5pt/GiVTJh6peAxXJlk5mDZxWEj6im
e3Xf01F1pi0xeOut4+8NeHBWG8mpcuR0YK0rnb3vhvi5mAjN5Mjyg7DOxxnuFW1wIAqCHrLk0CsF
yUIdwtmHAgcH/TfNl7iHXVY4gQpG3ORiTuuhUSolocPvXJYfpulqETOCItgYLB980eVT5akvKyTX
5IvKN29xicdyHMUsymzMCIThOeukdAD0zgNFJxF1BvbDVisDCzL0ceF+ubHamkLcL7BxWRC9Wboa
zQYlWARI96xjdsITmquL/dV7UciH/LRxqzpl1azzK1o2wa7Fefg0RxUnqtuEURxYDJuREXZtVQCv
kZYOdRubIroD2DQl255C3WMP42J6bvTeMlR01Vp+jUkh4W8zrJZ//9xE6ih1eZSg6ZawvxVA4gGr
SPr9o4E1IUHgbWr17y7N4EoFMZOpujGnC/mSG7ZWxAbXf+gyOrTP3t4lcJybQsNKyvrEIjgEBTc8
hugNTmr4Zn9WvyP8psgq7qVLeXQoDvdoprY2XD55XhzKw3Hrct27yew4wznciM1MjyrsQHyR2Y3X
fSB9NYbG1QKmaq6b388IKJssHjcHevwRK/1I/gfoVAARHP+Utfe0GtC0Bb0DRaJM5DMErpUOen+l
j7SWxxSabCxA+BQifVTd4YYryYhcPSdtsl6O98ZHWeUtny2mEzESw2p6TKIDffSKW8o6BK+xp8sO
Hf/meD3HSw8+74ofwe+BqDDYxLt1Hkgv5Whkk++37UDho7LtPzzRrh+joSDH6wTPORNEMolpSGdC
u9UidyLMuq0bC2kPmhDJ492BEd61OBMENbST/DktZgg6dLHWLNUO9i/d2QuP3eBuJt54F+HrdS7b
7G9gDXMjBmXpezi8DW4VWiONqOtoALISypQ5IBV50I5Dpf8Kj6z5XZpS2C7uXWefYVOvAd3XsAJU
cadYPQ9ISs9R2o0auCGYTBo4XNH/b6pFp6ZkZcBNzwQ2Ri7zNuwg4aNRbEJaQ2vOSDmWk5HXNeNU
4ifSCXqcPL8yCWsrEMJSIdQ0+mWTMRl58IKuX71D8e6GH/loYQSBopusicN8TmTAfP56yBhPfhaf
CMjkeEsfkKnWLlgFAh3LYZOh6a6FOLC66+CQFgWMW4Q4KwbAiD7KVxYQJ/GVxw0IIWgz7069oh1Q
uHOARTxY1SrIrSjYFqCzS9CjLzkhA9bp4G0y3jJIO2ngJTnXRMN1XBHYL+5pZAwTJ/u+bGJN6H3q
qNGI0xIptDw+CrHGsvMOZOzKpvqRKJGeqIBy8bDMCUDLcF2hlh0gympLjg2eTxBoE3/V6gBKYvxT
oC+6HojHyWBiFILQoqz5zO6EFINg9iAFK08yihnS5YKvtjmBjBVQZf4CENmAo89OylIzm/lZI2Th
Jb6bfpYbuYHxit/goXOUN2wK5p2rzvUJ0aczeFa6sMn8mNLVRArwcVJAqGnyoDk3UZgW2YgWTWgW
HcO9iqaV+fEJkWVmqav2QfTnT48h57UDsHPJZyF/alda1gBXpOLt3hpcumfnLV3gCjJvxpVJiK4J
dqxspbf2Bls90+4imRk3+zBeZADlLCHAQ0lsGlE34x1X/AKiQ+h2BsP862OChiIqXTV/EFC7jJnM
63xbwWOWN6GDeWiPzaU4WzAfxLRIkYZknNPcWZZGFZVt6nnxKbhnVpyWRDR49GqD7swyjicR+CzG
nqThzCUuTJFZSrWHJ1laGiIRXrLDPcsJJmDiQpEOBHAn9SmxELkui5DiymcA2Fwsu7huqXqgq9bj
UC1DWjb75I0RXqghCdQzDEoS/JC2KBS/agPnyxvQuaY6Txyyb9xUkjPkPXLV4xQicqKF5Qj1lHin
A9WJKtGenGXMy65EVaC/KS/XugjNg4sbSR9a6QJDpYKaTKlN6gZ5EUnVB4YFvYS+FFQM5Z6SUzGV
CA8btZVQ0M45hF+5f2yDAkhTq9kyz9Vzl7Bj8mxZPZhUHDPDWOThxPHSQ0+2mFLemzXGPFx1JRki
5r40m1zlzaaddCEaXUIMoLq2pEgbAf4tb9bHD4YUD0zWmF1GkHon1dd16fcx23gAvxf1/0TFZHS/
cPiepiztpAoegfYhgwU0pe9jOhMmbkWoeuuE5Nk6WXHyIoGLOOLMjiRMUZDt54RrHqtnstU+BE8u
jYPnJz1bTipkxsftVjNUSP/7L2KSMj5O/MpkelsJ9mjViYlMOnKnZ//rZTUXqbfxttSvvX2BFhln
yKMpdWqqaKNYJkkg7KsM0FLQWR7UlPGlQWWB5i87L63HdkjxNj3TGkVMjs1rPUl33jVoU3oxx5Ik
XJK5JnapXZuK1GTVkMDKmao9UZfofIujVh5Yt1JGevn3/kcZDLP9ToPywGYs4i5lAcE6Hni2pYyw
8hgxu5sU4jgs02fXwcZrEdZ97DlZWFarxkAJIfSc2PCEKvzvV0C9Mif2u9qEaCgbw0pPZFv1Eg7K
1zfkDYKz+LIBUJPgPGbbyrWGLnl7pb6a6qPK5EVoQmAI/XyGN1EmTkRI7XSzyxivxeCyoA1AKQ3P
Joo+AgmHW9oiJXqzSdWtUqQiG0g0Pi1P4+ncYaM4l9sI/3IsK+prCt0WLy5Uq//+xkueOqspS556
MEujyxJRjfm6nektNzp9DtI1tVdhTI/qA96URs9xTPDLRZzhRhe40dibTpCQAFisJE0votBhtI3s
lTB1auLvbcDNkwpORQrfepos1r1Au12D/9ePqbCaJR67VZyU3wqY8coGd3v/t1m+p4MtMC0kgL+G
J5/+GxqKcv3rHx96Fc+olVUipAsv/bnYpBpj0BikA1yPU5+0kPxhGpT77NrRJmog+A/cLNYHbzdt
/MnhwsWL+HOfvNkDyL4bmylmaQX05WL3mzvsZdHoJXtuKNzvDtXnqxuQDanKFv0MMYUNV0rJf7PU
w5L18sGhN5MW+XrAoIKS5dg2JmEEFG53GuWozxeP8JIg5H1GoKdUK23DEf2EkfpRNH9ayUS7sXCP
a69Ztw7S+jc0sQit5vccTG/xD4T40V9nCYmHMI+i9IqL8Xk4Jlvuhwm6tBgxQCoW4fIu1htlrNt9
4FX0lOCHCVaoYQ9KZnVw2KckLafBG3h1jopZ8bB0gOvMYn/sRxnscoj/f3iJiZ/3DnbuuBiVAvhm
yEu4FUXpzvpS6H5/lhv1wkFcciW1IqujwW6JNLZj0VURfNRKOUQXslbhW69QRwIWb8G8RTRxG5gR
yAJ390AeUCvb1AKjF6YXQPRQtUvgv00h91uvV4yba4wsDY7fMBDbJgDDj+nkLGzHn81ELzrgZlUF
vNk2Cz62JNVLzm4Fw6IU67NhuxpP0afafpS9FCbVivh71nX2XwUNl4GaEyQZE/jzlgye6THqw/Tf
y3aWu41Rq0SFyuRzK34XY8+GwdMHh0svZhrsXAYkzWKU+3MCpntyR4z75bIjQ6wRkCDHcCNC5Ej1
p/ysYqzJSVmkeni2lrtVfHtFxvcrbwslgVBgVIBMUz8l6xjevIdEqBcWYFAZYaIHoTzXSfGpQ5ls
2Uh25+0rqMRAK6AS2sZlKB2VRTCisgubesQ8Uka0GGLqFGJkNMkmkEjMtv/0wypyKzBLDzjfQUR1
AGuis1Ol4T/rJadJ27SoorHnfOeoj+cr76bWRClBAa4CAGHOI/c6ygIRCFSROPQft6B05Psks5p0
cdVb7Rogyw1emON8dkG3wglgmPCSRI52vlPOvABKxp9u0n9BeMUBhBAKygotOPcRvNgxOpIaZUGR
bAsAE6Kg77Dp9MGQaX2dyWxXQl33PICRPANWRtngxsiam6mDvRhholuyrEsEPW2lsBDz+ptrKwNL
WcHVIV2Jy5Rh+XwabSmCwLYou9/UVLFnu86hNVlgMpJRG1dy3bh7+HSEQTUY5gkrZ8FVpyYXW/Wk
tdFe3QB01bBpDWggMAn6tLAmU24HXQ6/N/T33n9wg16vAWWq8BFwW5vvdTsk9M1P/LcFibfWqeyr
ZOKeZgmUweunc8SldJmdk1HUPPM7uHxXwKz8Hj1WpafKCGWRu9OQVh3HjYjomSmBbyD4w4caSHLL
mi+Mm+6KhJmDSALjhOPgAA4l/MAIOj21JTJBV20u7QjAsZmirQwx/dBBs9W3PBVcdB0T34TkxDC+
RvdZik2NRxuAwAvtkRUYYEYNsjfx67b0v3qSndajU0FYQmgzAZ6g838pSphjLP4hCDzs0KZOsagu
yT2NFWCTsOKqIn2P8y/5Z/WEKuR0VTmcA6QsaLb4yLb2PmUNA6i7tvKgKzONM6QmY1AzruH9M77b
XcQGNcNIlFldl5TnoDSO6Y0tN2kA/9mCVrf2UJ1C9edRGO/rIgzSfIIX9K+l6IaBoFpeX7tOMPXY
OvZ3Hb9yJESX7444Jba63NLZSoHOJTZm5ORaSEZm3YWpo66+r7JOc+BJWBPQTJh7dAqnyFQKWOAB
Z8dil/+42pKyNod2lb4/20ww8azlPYUGF471ucwTW3i3l0p7Dp/0N2cPXb/98C1t7oCrtg3cKUV4
tM+4St2T48kJRZSatJyDr8TfKr0jyhI2lRSGFNAtIf2mGiCBGr97C0E68F9L920rsXUIDK0ellSP
78VvKC8chGl/0hUW4MGRvkJavpwx5GKdVoSt+iWvlZfr02sulyRI1r7SOdeVFvo0iNfPOFvvkgAt
Qp6FOQV+oKKO6zN4UaNLJDZyJEeqdm4AKYKZRFTWlnU1I4oY1XjoDrIXR7eU9Ks8l4lG9kWopGVm
m7r8brc54ffDoJI0hngJGa9YE06ZaOI+9bLff1AxN9O4xmr8WCAagBN7KfHCEhf5cOOHVorDAz+J
eKBBJhkRwYH+sZ7n+hluVGS6W+88uGh6atb9/QfPCCcmLCFKfAzZlk8ONeZaZutnbBra3YyQrBvf
QjTYh5s0rKDXjg5nRvopo+6p3/gv7sku0x2DknG9a9F7c4belEkxSSQDo+zWvdnFb1+dJEluP3mr
rvjZANlZEnQDPz+tkfw0KQDi6v6abhXmeNHy1UV+Z7pu0cuxJN/XCn2ejkdbRwFgIlFzXRNb568K
zxVgI2dAIJjAZH3ofGYvacan5xtuufd1sAgJ/28bfRfyqGqRXZB5J3ofBzXzht6ZcGdOav8lKOja
aAF2lZr83jLgFMmTfZlHlIawnXd/e69IWbVF1waO4Wgsy9bdtj6Z2f3dcm5hJDj/3sjlSLspZyaq
iP6YxqXwqy4RjyqgjNsxmVoFQtzwwHHAjT8bwFlRWkUHNWHQb+8B9SmoTjuob3mVVFC2PYhdT0Ul
n+ur++sFDZ8zFl00ZCoCjpMXDk7AqWZOmsMR0M9yKuQS/eAEREKtBKNEHcJ5yfDnGRJCqiWM9Vf7
MAVDSdxnfhNt4Q04cmD0m/9ADpbYJV3cCbKa7lbEsnppKDizaGvvXC9a9ddCIZ9ld5WUPj9mOJnR
IuaZyDssjAfNH2NsYtFqrgWfWUJ5mSJDahDQt/Gbm2esBbj+H4i6/cceXHcjwb9mp5fpvChvifjW
eSDR9vF77xudQaub2LByiMTd/bTS7MqYsZAKKuhS+f5ohtAmISwP6BSUbRbSV9SK+0CTErHnWDYi
EQbbSN468tcjNQQkJ6urylrKRFvzGbZv9oqLg7cq0VlYDFKVdsoSovpwLUqDmgQuneCk3iZ6CVZS
7ZdGp15536gbsNE3zYiQVo15XhBhbIFPK4mrGw7zOuYh5JRJPENcyHYBcV7K3azvSobyAypu07E1
9bLgTRnYlx0ilwfdLympuTjPRpNcUWrzEHuLihMrD9vS8wl5e1z6hpkh10uDD9lXno5tiSNN3nTY
AUbz9uxRWFob3k0NTp4nHIjYIsI2BEVaqr0WE3yXHXOkm1huVQN1+9biyxP0xpaIA5G6Tf2jBPVY
ImTXaf3TC+M6ikj7rbcDkdaWDhnogE3Db4aeIw0ycnx03/j5IN1nHiALpziUEM+VeyvE4lRqKdmH
7d8PWoL7Rar1Vp7nUhvpG7TOuNKUlakwto+dYJiDXfktyUG5yZioh6i5+MdFRqyj9zuTjGIawsp+
TXiZiM+mWFMJWU8i5PvAcCeDgymZWDbkV969TC4eish1um/XlMtvqD18V7o9Ntr1cV8PWokeGLec
7RFyhG2dNCVyQb7k0VQPIolkufLKFCifp+TfqBl0jiNCDMV7fioHyMInQe9fOgkKj8S+Ms0u6HrU
bfEPuQPrRqoOXwbAPOkJI9agy3FqvYt5o61e0g47dj4B6YZnFN+USrA70pAJiVadcCoaxu1d6BoB
wGTFWLp2S452+VFzTiuY3ReB3cmjlkBaT+cg2beslOuQ15s8Utve7lRXbajtsu5TxFEx6OzBfPRw
wFKP7egSfSbGAAajyIFe5I5uWiJ7Z4i6mIwDWkvc3iYPVVKys1dlE9XoEtgtdKf8xsyHC4ZWr+mw
FK13fprp2ZJw+EE0x6RGHnReQ24kLQTmizl482oVgUif1iRQRrmFEQ6kBmRxz9fWqohbDwy7F3P1
lwoQU4rWm1vYreIQwbIDozzM/LZYPmf67O1kLqe6p2X+irjUevdBZ4Y2S06lUULH8TKffY4lZj/o
BrFSUiBg5I30GCIWLD36eVAAwuVeDFLxTynMQinM0kRqNvVVybEjjC74kvF2H54Ewqz8+jWWQRA/
HIGG6tnIFGlvpoI50BMCZdyoXrwO/2rKlkkB4r//NrVPc6YlAcv74yv0Lgqum7GoGCepXNB3LJj2
e5iTN6Hvqe1gsvmv/ovnLyvKljJJvh08yOhA/QnSLjyikmVi4jYQe8W3k3SOrSjK8PQq8kYPq0k/
xsMRfB6gqO6T5m8or6Lb+ynKOiioHTm7a4ucqYVjxZJwrXyT/2LTtK2NSVF0DCxdJRrfVeo6wvx5
8Uqr3xdLTPOG4ndOj0LHT2I20MNRpov8l+tfm3WcKvrIiHHPQXvMWW78RPVaGJNKEWMMvLrIJ15N
+8q0wEc62R1nIG2dE8CKTkRwCVpRczkbGWkmIHnc+1xr1scqt/qpkVH8Kf3muMcu7yjA+Y7ZyMby
NSTHipo25vPaM9fa7YvZOke8IrU3JpuoNsuW+vcrXWkn6DcQ5iWvL53JCXyLyYAF+qNbDz8VxLF2
Vzqd5GJe+/TVnd1oPQIQ9UGmQcf1cA0Gqt2u7Y899BWJsO0TXYBahTk/SEI1MW+UoT+arcrR6HKr
kfB4fh5tPuk3wGbI4/MG565sgdUmKQSZu++6PXVFpsrJcl/FH99XH1NSH7Tqc0MRfU2NsHcaQ1Ij
uPrSRh8OVv1FPOuvcMNFbPbYwq/zOGP5/2dGNXqDRc3Xjid5RiVL/8ctgHbnN7UiAcf9VW7uJava
kB/B3q8IGZeVd0HRgY/5qkTLRtg0uZ6daaMCECJndbqU6cPFko/Lh+7VQ/Fz05blkp4xYwJXAytm
+PlH7nMHbk4LqZ5KFyKlcijNTN+hIXng8Eslv5ESZrEfI7XN0xzje2nz6d16IWFnBBcTIMzgiGKC
ECW8Li4VcGKWDTiEMoR+XvEsAOFrXzwMA1J9L2DaXZAYSNyZoT3pGyQ8S6uHH3vYxDACd0cJ0SS8
Se2lRnv0JtmqvU7NSlXOhEqvSgRYobRT6fn6SqaQh/VRlxDk4NMjssZ537H7JfooasvYO9d0hcQe
0seUBiPhcn9O2Kk1nl7dgMCndfBR8dIfl3pFKX2rj2Z5HEGvmsaMgCgLYF4a/11FZ4u+DdnBTEmF
O9lJThx+DKSpkLAC+InCZTdmVmvyzfTy9AOnUNL1Yo6iSuvAQwWEkOfC+GNaIT8x2LKKe0wpRM+j
EdosyIVSkcwOmoA0/iVYLEvLTSNfmGwu3ZxB9RzmhMAl3UR2efBp2Z7DPAweXOSFZe14QRmeTLpP
0BK0YS4Zl0lf3+PfIXWpfQLzJHwAtV9tt06aAByJdLlEQjpNK5Vrh57gPSFPup/zdQtkpin2KOQs
zt5QePLRHO7zGF7qawIr02+360IE4KGl94XKn0pKyXV6EUXvNvCyofCPitQvsFTrP3EzoU4NdFbN
mL7gAI25GjFnNv+tfIakbWE4vUO7T6yrkHUkIkq8zqY6LpNM+/vVR5gw+uROd4UN6KfrO5utfd9A
MUSmQ69Yymh5J/HhlVPNEU7MPopAGo+U3regermJJAlPMlquJW0BV5vSx1C1LhksTEwOJOgrUyTi
kD+0EwRO3HxSguXG91+jDA8S6hcCA7Rqd+qAGzNNtEvv+sT0e22E2TVM4CsDULnWvWdCBUmR82iT
956Ra0XanZXemK8l0pTe8bCGbalzCdmlmBDGOgxAK70cZtDa4uD1pHzGxHEgzdxEpMPneMWcWH02
GpUtf3MJyWZWnwokBQuLeldR0Oq53mpPL5uWK2kcN3RRfGhwtTtFsFphlHFI5ikR0ZqB2O3y6H5p
aZ/7tHs2Kmy6leAyVNbszYKb+cTtXKFLiriMO6uwtTTA+xtyV+fdwoOwDDwOsQWYtnFfCuHuPMty
sjzp+/VoMxzBi3YMUJYWRiaRDIMimp2VkzOPvTEfekDj/gGudargsCbE2s9AVThe4GocSFyx6niC
dnWbQWrq2vA0KoSMzTQZFXQZyygE69lJdPoE7n9MAtMK2I1bUW6/EkPAvV1s9wQ45KYkR7vX/0tS
LMNYFpoGFBWPzvkCJEatZfCHAZNyxUtktMuV00l0GFcR2tqtLGFrdDPTLCA9a3jCaRg36VyWSgo0
gP8b+ldGrlIuznEATg2i/AO0bFqV2FzfVdYJMWILtVTKh1pKyzUTP5V7bBFOMMZRk2SKNRyyTdhL
pCSgUBBUI9OscpkAOHbyRVPb50nN5MaBQ1lEcj8hYhI8oPYc66UOodfWjwH6aotICC0/O045VdOz
viHCY0LPB/yit3w0De496Vmm0fCxuacbQsk6B86mrL6atyGjPF/fLZEHSVMvRWjmm5xEtfOUz7CW
JfC+u0sV/tl1/d1O6zpgl/mbk16DwkRYCWoeLTLoO5KMn4QYLZkvwS7r8H1M+jflKeKsq9lXWqax
RyGw9LzbKCAFVi/uDODc1BLBo6wEME10D+JblczVqzTVkokqiGRAFhhnYUAejjHEbKFdQbEcRty+
w78pbI2rBRAPTZSKweq1MQmk5vrwGbU9lZPH/iBmnwn7mWyUC3da2zIlOtkdNDR9b6/MQAKhI8ZD
OxfqavF83fM58IIW4xcT5i2yH0Rs3ff0i/1xpXvaPORjccLs5WbHq4c7Wqwzx0zhtHzCBXtj8tEG
K7cN+mVMrkBdDg/vnM9BRcLoiUWjLXyydL2VKAEuPHopkJv4STMwgSZ1wNE8l68tdor+yBgPhgkp
TqU6scHsP9MYb0ohym/wzYk8EYns0U5QfSMezzjzSSdfOwZ3yUEdhVrUepV058RT3577s4xk1WFP
DzMXYxdEyl4ro3vgtZGWUc9b/fx/NPQ5+oSh69ktAw9+XoCKz7Pw5fU+HZ3hGOcpzyI+Cr/D1NpS
g8wco0CeFwrVGTLsxUCi4a1ZzqO2QxOUAgiGXuLkbl0feN+fmqZ/Pj1BcEAGhMDu9grFQExMc1Gn
6GSrLTmfy+ZjpxA4kjUHSoQOHQS+RhjcgHfSAvaW1H1dLYSlHCVkmcqv4hcYhewEWXxu5lmS+mXt
pBc0zmaeUAPBPFuguMJl5hIml3feyukZpyf3x6EHh5Deh88hYiH2YOt42w5BZ2USwjXagB5RFgMP
418uA/URd5KkvNi2qeMlfVuuTt2gOUUWjR0bQRj+k6z9sAFbOFV9ihFpAaXqhWAY+aIbI8AF/KcJ
CXZqbGSCaCIiefimTo7jBwqRE2JVGklJHq2ub5Nth3wAm5nnK9ZKuUKtQ18vfxk5odnP8lGmxCZ2
rUjbPAsB/zJP/XT87am+yfBmmiIoT2OLOchegPbIr0CaknDRwifRHF30AXUuu+FHATU9ZVVbbOOb
TaqfqnatY6GD8+4AFsQUULe63K/EFpEJYK6R1r5t2sL2jA4SycJg7cVWWB5AE3Vpz0/AVdS3khzv
8atOizDNPpyOww0gY6DSe0t/BI1LeHRCDx7NFd+1Vx7bIAYEF0HQmxVy7D9lEKfekKcQNk47yIkJ
A6p2YP2JwtBQpSjOGY8YKzDnqYfC4V12j0ex26wN0IlNkEIU6ZAr0Qi+IMxnDWaG/yMb/3aXZ62R
+rc/6QAKk4Izwrz6e24Vh4uDjIF2GYHwzeyUMWY2R385U4/H7qdc2NyPHhJ4JgvNNtZvrZFYTi6g
77AYJwCU30pEOWnZC9dDOOxWSaYd7tYeKTbPh+BIR2kLOqxQAH01dzRPRBBspb6cs+uByjIZp/Ht
qlT2AHWEAnnIE4s8r8gs5OkQ9nf0OdaJ3UmsI+KGwe3VuMlIy8nHHk8uL0fOcF2CKhKrUPrtNozb
SNY1AuxSiV7JbfqtJREsfBOA833eacbJbuc1wd8E4D94gQFDu3p3tahOus7VDxnEcoV/EGNuQ3gS
Rf/glwmGpmUIGCej7u/slExKzgnpK8zGVGTr//2Wom6uw6lSPXw4DjMhCUTKo6lHOELlW0teBakc
QGXTexjAFeQVicFjegRVODEJZ3jCrKu9FtZlmQdhmM4pAyZzibpPM+KbBQLohMgsT/qPxur3xmMm
Y/6ejU2rZkY5AD2q0SHEqUo3FujtXDRUUKTz2OtrIoLE4X/WOdvMIMX5DGAgpaWdAT2JUizTIe4z
LmAaLM+W2wo7MVuvj/WubNU5svs2BSO6+ZmBdVN/6j1BnM/4/bM2SGnQZAzksejua5aYLqoNl41g
K0NXz3v03GOYYbcOOWa55xhHFJnySelD0Re0ZPdnfq3+STBiwVrATszC19hbO6QA0+jN/x/w4UrY
1cfiKhCDJw9i/ZC/aoCBIwPeCgMdLsUStSjuucMgcq9TqD+lVedWYl7QXYLiX1EBr6VBR9p4EgKZ
/lXIcnwiXtEMyyztWVg1mY6vLLWYcrkwlu+Wu38JhHTt19Tb0QhdtSNIueKOGm3v51cLSeu6hEzz
11kB3x0uw4Z4XVoLWG+t1XW15T3OlkdTIg2judHe6cxB8Lj6YJ7PyIAVb5OXKb//2KNGYAaXUbRI
49hDSQ+bxMniineQ03XpaML/ObynXkedCtdo1HCDxKULL0N53JgGE/rR90YO+oIjMFgHpesBRGyT
wBoTUg4WcoesskpNmyFnxJWX6zAO/GqhEigkBl9pKwJOkyjwqGcC6tyY+7P8BHLqg3WNutvMfW2c
BLa75BlwPxtvytMhr1srUUN/601BczgUHh85t14l++EmRw1rMsmwE6ATdGJDuN8dNgpzU9CgX/v6
QGl3KxOcaxTze5N5MWuRmBz/RVnAS/IXNEntJkAvgeaaZyf8E3gZ78YXxv5QvazDALFzzMjjCKhI
2p/DE/XzNJF6sDL1PmKo51mydKnrFEkN4Xs8WKcMkv5JR9Z7lnaWDpRmHKOgBt8JZ5HawykbEj/k
GrlSpAI7YuBkGDA00yDPQiwYkZeXgzYU/aKl330u78xAl0vlHYfA9h86Xt3NJ+vVRY5A4nKbqO/e
jbCDMsycI9Ti9G0eCoQdsWi3oV2l1R4D53h/n4pQjnWIPrtnd/t/PTkPgrTMlMxZKf/lwDawIGYS
AvIIVv8jTETM7/ZTFbPVyFNHd2bFZ1F3Y2EDKgQHsXvs9hPNS2cekvJd16qPpDf3kr/hGTB1oQ/u
RXJth5zbNW9U2pRK/QyLR0oItfWdl9zUsrP/BQ5j3qEGO9qldMPhNfST0+U0PMDf9YTWLzgn0YUE
kK+g2IDzv5Px2FWoXy0qCLdu+DhyelZAOxJxRS461umiOuqzqQRLHktwtIivOkFnOJk864KNSKwF
s3K2ogc2JeMzXOaN4THTp6uhoNJLKvNpwD79BVr5QaF6HFpE
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
