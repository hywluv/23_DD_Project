// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jan  4 10:46:36 2024
// Host        : xyw-luv running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20800)
`pragma protect data_block
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
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
