// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.2.0.101
// Netlist written on Fri Nov 08 20:37:51 2013
//
// Verilog Description of module AP1220_controller_top
//

module AP1220_controller_top (clk, rst, sclk, miso, mosi, s_en, 
            uart_rx, uart_tx, leds);   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(5[8:29])
    input clk;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(7[4:7])
    input rst;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(8[4:7])
    output sclk;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(11[4:8])
    input miso;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(12[4:8])
    output mosi;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(13[4:8])
    output s_en;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(14[4:8])
    input uart_rx;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(17[4:11])
    output uart_tx;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(18[4:11])
    output [7:0]leds;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(21[4:8])
    
    wire GND_net;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(43[8:20])
    wire VCC_net;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(43[8:20])
    wire clk_c;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(7[4:7])
    wire rst_c;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(8[4:7])
    wire mosi_c;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(13[4:8])
    wire [30:0]idx;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(45[8:11])
    wire [15:0]spi_packet;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(47[8:18])
    wire shift_strobe;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(48[8:20])
    wire s_en_i;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(49[8:14])
    wire [30:0]count_target;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(51[8:20])
    wire [30:0]count_32_bit;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(52[8:20])
    wire do_count;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/ap1220_controller_top.vhd(54[8:16])
    
    wire n5641, n4822;
    wire [7:0]n2029;
    
    wire n179, n3680, n6069, n5973, n3684;
    wire [7:0]n263;
    wire [30:0]n130_adj_9;
    
    wire n754, n5631;
    wire [30:0]n756;
    
    wire n5535, n5547, n5980, n161, n5813, n5979, n5545, n5546, 
        n11, n5538, n63, n5836, n4836, n5544, n5543, n5539, 
        n5542, n5536, n5971, n5534, n150, n5240, n5540, n16, 
        n6034, n131_adj_4, n5985, n5894, n5984, n2568, n5972, 
        n5843, n146_adj_6, n5978, n4336, n5977, n5541, n5968, 
        n5402, n5642, n5976, n5982, n5937, n5533, n4962, n5975, 
        n5537, n5789, n5401, n5400, n5399, n5398;
    
    VHI i2 (.Z(VCC_net));
    LUT4 n131_bdd_4_lut (.A(n131_adj_4), .B(n179), .C(rst_c), .D(n5976), 
         .Z(n5968)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n131_bdd_4_lut.init = 16'hffca;
    LUT4 i1339_4_lut (.A(n5813), .B(n5642), .C(n2029[1]), .D(n754), 
         .Z(do_count)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1339_4_lut.init = 16'h3afa;
    FD1P3AX count_32_bit_633__i27 (.D(n130_adj_9[27]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[27]));
    defparam count_32_bit_633__i27.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(n756[0]), .B(n4836), .C(idx[1]), .Z(n4822)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i2_4_lut (.A(n5240), .B(n2029[1]), .C(n5980), .D(n146_adj_6), 
         .Z(n5641)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    FD1P3AX count_32_bit_633__i26 (.D(n130_adj_9[26]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[26]));
    defparam count_32_bit_633__i26.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_20 (.A(n756[0]), .B(n4836), .Z(n5976)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_20.init = 16'h8888;
    FD1S3DX current_state_FSM_i5 (.D(n3680), .CK(n11), .CD(rst_c), .Q(n2029[4]));
    defparam current_state_FSM_i5.GSR = "DISABLED";
    FD1P3AX count_32_bit_633__i25 (.D(n130_adj_9[25]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[25]));
    defparam count_32_bit_633__i25.GSR = "ENABLED";
    FD1S3DX current_state_FSM_i4 (.D(shift_strobe), .CK(n11), .CD(rst_c), 
            .Q(n2029[3]));
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1P3AX count_32_bit_633__i24 (.D(n130_adj_9[24]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[24]));
    defparam count_32_bit_633__i24.GSR = "ENABLED";
    FD1S3DX current_state_FSM_i3 (.D(n5968), .CK(n11), .CD(rst_c), .Q(shift_strobe));
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1P3AX count_32_bit_633__i23 (.D(n130_adj_9[23]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[23]));
    defparam count_32_bit_633__i23.GSR = "ENABLED";
    FD1S3DX current_state_FSM_i2 (.D(n5641), .CK(n11), .CD(rst_c), .Q(n2029[1]));
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1P3AX count_32_bit_633__i22 (.D(n130_adj_9[22]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[22]));
    defparam count_32_bit_633__i22.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i0 (.D(n130_adj_9[0]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[0]));
    defparam count_32_bit_633__i0.GSR = "ENABLED";
    CCU2D count_32_bit_633_add_4_31 (.A0(count_32_bit[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5547), .S0(n130_adj_9[29]), 
          .S1(n130_adj_9[30]));
    defparam count_32_bit_633_add_4_31.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_31.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_31.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_31.INJECT1_1 = "NO";
    CCU2D count_32_bit_633_add_4_29 (.A0(count_32_bit[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5546), .COUT(n5547), .S0(n130_adj_9[27]), 
          .S1(n130_adj_9[28]));
    defparam count_32_bit_633_add_4_29.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_29.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_29.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_29.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(n5836), .B(n6069), .C(n6034), .Z(count_target[8])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    CCU2D count_32_bit_633_add_4_27 (.A0(count_32_bit[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5545), .COUT(n5546), .S0(n130_adj_9[25]), 
          .S1(n130_adj_9[26]));
    defparam count_32_bit_633_add_4_27.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_27.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_27.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_27.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_1 (.A(n756[0]), .B(n756[1]), .C(n756[2]), .Z(n5642)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i2_3_lut_adj_1.init = 16'hfbfb;
    LUT4 i1781_1_lut_4_lut (.A(n5813), .B(n754), .C(n2029[1]), .D(n5972), 
         .Z(n2568)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C (D))))) */ ;
    defparam i1781_1_lut_4_lut.init = 16'h35f5;
    CCU2D count_32_bit_633_add_4_25 (.A0(count_32_bit[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5544), .COUT(n5545), .S0(n130_adj_9[23]), 
          .S1(n130_adj_9[24]));
    defparam count_32_bit_633_add_4_25.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_25.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_25.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_25.INJECT1_1 = "NO";
    CCU2D count_32_bit_633_add_4_23 (.A0(count_32_bit[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5543), .COUT(n5544), .S0(n130_adj_9[21]), 
          .S1(n130_adj_9[22]));
    defparam count_32_bit_633_add_4_23.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_23.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_23.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_23.INJECT1_1 = "NO";
    CCU2D count_32_bit_633_add_4_21 (.A0(count_32_bit[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5542), .COUT(n5543), .S0(n130_adj_9[19]), 
          .S1(n130_adj_9[20]));
    defparam count_32_bit_633_add_4_21.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_21.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_21.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_21.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(n2029[4]), .B(n2029[3]), .C(s_en_i), .Z(n3680)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hcece;
    LUT4 i2191_4_lut (.A(n5789), .B(n6034), .C(idx[1]), .D(n5973), .Z(count_target[3])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2191_4_lut.init = 16'h0008;
    LUT4 i1_3_lut_4_lut (.A(n4836), .B(n5977), .C(n263[1]), .D(n6034), 
         .Z(count_target[4])) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf800;
    CCU2D count_32_bit_633_add_4_19 (.A0(count_32_bit[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5541), .COUT(n5542), .S0(n130_adj_9[17]), 
          .S1(n130_adj_9[18]));
    defparam count_32_bit_633_add_4_19.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_19.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_19.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_19.INJECT1_1 = "NO";
    LUT4 i175_4_lut (.A(rst_c), .B(n756[2]), .C(n2029[0]), .D(n150), 
         .Z(n3684)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i175_4_lut.init = 16'hdc50;
    CCU2D count_32_bit_633_add_4_17 (.A0(count_32_bit[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5540), .COUT(n5541), .S0(n130_adj_9[15]), 
          .S1(n130_adj_9[16]));
    defparam count_32_bit_633_add_4_17.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_17.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_17.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_17.INJECT1_1 = "NO";
    CCU2D count_32_bit_633_add_4_15 (.A0(count_32_bit[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5539), .COUT(n5540), .S0(n130_adj_9[13]), 
          .S1(n130_adj_9[14]));
    defparam count_32_bit_633_add_4_15.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_15.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_15.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_15.INJECT1_1 = "NO";
    CCU2D count_32_bit_633_add_4_13 (.A0(count_32_bit[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5538), .COUT(n5539), .S0(n130_adj_9[11]), 
          .S1(n130_adj_9[12]));
    defparam count_32_bit_633_add_4_13.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_13.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_13.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_2 (.A(n2029[0]), .B(n263[1]), .C(rst_c), .D(n5240), 
         .Z(n5813)) /* synthesis lut_function=(A (B (C))+!A (D)) */ ;
    defparam i1_3_lut_4_lut_adj_2.init = 16'hd580;
    LUT4 i2_3_lut_rep_24 (.A(n2029[0]), .B(n263[1]), .C(rst_c), .Z(n5980)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_24.init = 16'h8080;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n756[2]), .B(n4836), .C(idx[1]), .D(n756[0]), 
         .Z(n6069)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0008;
    CCU2D count_32_bit_633_add_4_11 (.A0(count_32_bit[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5537), .COUT(n5538), .S0(n130_adj_9[9]), 
          .S1(n130_adj_9[10]));
    defparam count_32_bit_633_add_4_11.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_11.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_11.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_11.INJECT1_1 = "NO";
    CCU2D count_32_bit_633_add_4_9 (.A0(count_32_bit[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5536), .COUT(n5537), .S0(n130_adj_9[7]), 
          .S1(n130_adj_9[8]));
    defparam count_32_bit_633_add_4_9.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_9.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_9.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_9.INJECT1_1 = "NO";
    LUT4 i2950_2_lut_3_lut_3_lut (.A(n756[2]), .B(n4836), .C(n756[0]), 
         .Z(n5789)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i2950_2_lut_3_lut_3_lut.init = 16'h4848;
    CCU2D count_32_bit_633_add_4_7 (.A0(count_32_bit[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5535), .COUT(n5536), .S0(n130_adj_9[5]), 
          .S1(n130_adj_9[6]));
    defparam count_32_bit_633_add_4_7.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_7.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_7.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_7.INJECT1_1 = "NO";
    LUT4 i2993_4_lut (.A(n4822), .B(n756[0]), .C(n5971), .D(n756[1]), 
         .Z(n5843)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2993_4_lut.init = 16'h0535;
    LUT4 i2195_2_lut_3_lut_3_lut (.A(n756[2]), .B(n4836), .C(n756[0]), 
         .Z(spi_packet[13])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2195_2_lut_3_lut_3_lut.init = 16'h4040;
    CCU2D count_32_bit_633_add_4_5 (.A0(count_32_bit[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5534), .COUT(n5535), .S0(n130_adj_9[3]), 
          .S1(n130_adj_9[4]));
    defparam count_32_bit_633_add_4_5.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_5.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_5.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_5.INJECT1_1 = "NO";
    LUT4 i2994_2_lut (.A(n5843), .B(n6034), .Z(count_target[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i2994_2_lut.init = 16'h8888;
    CCU2D count_32_bit_633_add_4_3 (.A0(count_32_bit[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_32_bit[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5533), .COUT(n5534), .S0(n130_adj_9[1]), 
          .S1(n130_adj_9[2]));
    defparam count_32_bit_633_add_4_3.INIT0 = 16'hfaaa;
    defparam count_32_bit_633_add_4_3.INIT1 = 16'hfaaa;
    defparam count_32_bit_633_add_4_3.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_3.INJECT1_1 = "NO";
    CCU2D count_32_bit_633_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_32_bit[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5533), .S1(n130_adj_9[0]));
    defparam count_32_bit_633_add_4_1.INIT0 = 16'hF000;
    defparam count_32_bit_633_add_4_1.INIT1 = 16'h0555;
    defparam count_32_bit_633_add_4_1.INJECT1_0 = "NO";
    defparam count_32_bit_633_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(n5631), .B(n150), .Z(n4836)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_3 (.A(n2029[1]), .B(n754), .Z(n150)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'h8888;
    LUT4 i2326_2_lut_3_lut (.A(n756[2]), .B(n4836), .C(n756[0]), .Z(n4962)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2326_2_lut_3_lut.init = 16'h8080;
    LUT4 idx_0__bdd_3_lut_4_lut_4_lut (.A(n756[2]), .B(n4836), .C(idx[1]), 
         .D(n756[0]), .Z(n5937)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C (D))))) */ ;
    defparam idx_0__bdd_3_lut_4_lut_4_lut.init = 16'h377f;
    OB mosi_pad (.I(mosi_c), .O(mosi));
    LUT4 i13_3_lut_4_lut_4_lut (.A(n756[2]), .B(n4836), .C(idx[1]), .D(n756[0]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i13_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 i2324_2_lut_rep_19_3_lut (.A(n756[2]), .B(n4836), .C(idx[1]), 
         .Z(n5975)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i2324_2_lut_rep_19_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_adj_4 (.A(n756[1]), .B(n756[2]), .Z(n161)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'heeee;
    LUT4 i172_4_lut (.A(n161), .B(n2029[0]), .C(n150), .D(n263[1]), 
         .Z(n179)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i172_4_lut.init = 16'h50dc;
    LUT4 i2289_2_lut_rep_23 (.A(n756[2]), .B(n4836), .Z(n5979)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2289_2_lut_rep_23.init = 16'h8888;
    LUT4 i1_2_lut_adj_5 (.A(n756[1]), .B(n4836), .Z(n131_adj_4)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_5.init = 16'h4444;
    FD1P3AX count_32_bit_633__i21 (.D(n130_adj_9[21]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[21]));
    defparam count_32_bit_633__i21.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i20 (.D(n130_adj_9[20]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[20]));
    defparam count_32_bit_633__i20.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i19 (.D(n130_adj_9[19]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[19]));
    defparam count_32_bit_633__i19.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i18 (.D(n130_adj_9[18]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[18]));
    defparam count_32_bit_633__i18.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_6 (.A(n756[1]), .B(n4836), .Z(idx[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'h8888;
    FD1P3AX count_32_bit_633__i17 (.D(n130_adj_9[17]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[17]));
    defparam count_32_bit_633__i17.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i16 (.D(n130_adj_9[16]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[16]));
    defparam count_32_bit_633__i16.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n4836), .B(n756[2]), .C(n756[0]), .D(idx[1]), 
         .Z(n263[1])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h5700;
    FD1P3AX count_32_bit_633__i15 (.D(n130_adj_9[15]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[15]));
    defparam count_32_bit_633__i15.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i14 (.D(n130_adj_9[14]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[14]));
    defparam count_32_bit_633__i14.GSR = "ENABLED";
    LUT4 i2992_2_lut_4_lut (.A(n5975), .B(n161), .C(n5971), .D(n6034), 
         .Z(count_target[6])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam i2992_2_lut_4_lut.init = 16'h3500;
    VLO i1 (.Z(GND_net));
    LUT4 i2804_3_lut_rep_22 (.A(n4836), .B(n756[2]), .C(n756[0]), .Z(n5978)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i2804_3_lut_rep_22.init = 16'ha8a8;
    FD1P3AX count_32_bit_633__i13 (.D(n130_adj_9[13]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[13]));
    defparam count_32_bit_633__i13.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i12 (.D(n130_adj_9[12]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[12]));
    defparam count_32_bit_633__i12.GSR = "ENABLED";
    LUT4 i3_2_lut_rep_17_3_lut (.A(n756[1]), .B(n756[0]), .C(n4836), .Z(n5973)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i3_2_lut_rep_17_3_lut.init = 16'h2020;
    FD1P3AX count_32_bit_633__i11 (.D(n130_adj_9[11]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[11]));
    defparam count_32_bit_633__i11.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i10 (.D(n130_adj_9[10]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[10]));
    defparam count_32_bit_633__i10.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n756[1]), .B(n756[0]), .C(n754), .D(n5631), 
         .Z(n146_adj_6)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2f0f;
    FD1P3AX count_32_bit_633__i9 (.D(n130_adj_9[9]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[9]));
    defparam count_32_bit_633__i9.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i8 (.D(n130_adj_9[8]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[8]));
    defparam count_32_bit_633__i8.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX count_32_bit_633__i7 (.D(n130_adj_9[7]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[7]));
    defparam count_32_bit_633__i7.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i6 (.D(n130_adj_9[6]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[6]));
    defparam count_32_bit_633__i6.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_16_3_lut (.A(n756[1]), .B(n756[0]), .C(n5631), .Z(n5972)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_16_3_lut.init = 16'h2020;
    LUT4 i2988_3_lut_rep_15_4_lut (.A(n756[1]), .B(n756[0]), .C(n150), 
         .D(n756[2]), .Z(n5971)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2988_3_lut_rep_15_4_lut.init = 16'h0020;
    FD1P3AX count_32_bit_633__i5 (.D(n130_adj_9[5]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[5]));
    defparam count_32_bit_633__i5.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i4 (.D(n130_adj_9[4]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[4]));
    defparam count_32_bit_633__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_21 (.A(n756[1]), .B(n756[0]), .Z(n5977)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_21.init = 16'h2222;
    FD1P3AX count_32_bit_633__i3 (.D(n130_adj_9[3]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[3]));
    defparam count_32_bit_633__i3.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i2 (.D(n130_adj_9[2]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[2]));
    defparam count_32_bit_633__i2.GSR = "ENABLED";
    LUT4 i2613_1_lut (.A(n756[2]), .Z(n5631)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2613_1_lut.init = 16'h5555;
    FD1P3AX count_32_bit_633__i1 (.D(n130_adj_9[1]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[1]));
    defparam count_32_bit_633__i1.GSR = "ENABLED";
    LUT4 i2986_1_lut_3_lut_4_lut (.A(n756[1]), .B(n756[0]), .C(n150), 
         .D(n756[2]), .Z(n5836)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2986_1_lut_3_lut_4_lut.init = 16'hffdf;
    PFUMX i3055 (.BLUT(n5984), .ALUT(n5985), .C0(n5971), .Z(count_target[7]));
    LUT4 n5932_bdd_4_lut_else_4_lut_4_lut (.A(n5813), .B(n754), .C(n2029[1]), 
         .D(n5972), .Z(n6034)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n5932_bdd_4_lut_else_4_lut_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_else_4_lut (.A(n6034), .B(spi_packet[13]), .C(idx[1]), 
         .Z(n5984)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_else_4_lut.init = 16'h0808;
    LUT4 i1_2_lut_then_4_lut (.A(n6034), .B(n756[1]), .C(n756[0]), .D(n5631), 
         .Z(n5985)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_then_4_lut.init = 16'h2000;
    PFUMX i3053 (.BLUT(n6034), .ALUT(n5982), .C0(n4836), .Z(count_target[2]));
    LUT4 i9_1_lut (.A(clk_c), .Z(n11)) /* synthesis lut_function=(!(A)) */ ;
    defparam i9_1_lut.init = 16'h5555;
    IB rst_pad (.I(rst), .O(rst_c));
    IB clk_pad (.I(clk), .O(clk_c));
    OBZ leds_pad_0 (.I(GND_net), .T(VCC_net), .O(leds[0]));
    shift_reg_16_bit SR_16_0 (.GND_net(GND_net), .n63(n63), .clk_c(clk_c), 
            .rst_c(rst_c), .n4336(n4336), .n11(n11), .n5979(n5979), 
            .n16(n16), .\idx[1] (idx[1]), .\spi_packet[13] (spi_packet[13]), 
            .n4822(n4822), .n5975(n5975), .n5976(n5976), .shift_strobe(shift_strobe), 
            .n4836(n4836), .n787(n756[0]), .n785(n756[2]), .n5937(n5937), 
            .n5978(n5978), .n132(n6069), .n270(n263[1]), .mosi_c(mosi_c), 
            .n4962(n4962));
    OBZ leds_pad_1 (.I(GND_net), .T(VCC_net), .O(leds[1]));
    OBZ leds_pad_2 (.I(GND_net), .T(VCC_net), .O(leds[2]));
    OBZ leds_pad_3 (.I(GND_net), .T(VCC_net), .O(leds[3]));
    OBZ leds_pad_4 (.I(GND_net), .T(VCC_net), .O(leds[4]));
    OBZ leds_pad_5 (.I(GND_net), .T(VCC_net), .O(leds[5]));
    OBZ leds_pad_6 (.I(GND_net), .T(VCC_net), .O(leds[6]));
    OBZ leds_pad_7 (.I(GND_net), .T(VCC_net), .O(leds[7]));
    OBZ uart_tx_pad (.I(GND_net), .T(VCC_net), .O(uart_tx));
    CCU2D equal_48_31 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5402), 
          .S0(n754));
    defparam equal_48_31.INIT0 = 16'hFFFF;
    defparam equal_48_31.INIT1 = 16'h0000;
    defparam equal_48_31.INJECT1_0 = "NO";
    defparam equal_48_31.INJECT1_1 = "NO";
    OBZ s_en_pad (.I(GND_net), .T(VCC_net), .O(s_en));
    CCU2D equal_48_31_2704 (.A0(count_32_bit[5]), .B0(count_target[5]), 
          .C0(count_32_bit[4]), .D0(count_target[4]), .A1(count_32_bit[3]), 
          .B1(count_target[3]), .C1(count_32_bit[2]), .D1(count_target[2]), 
          .CIN(n5401), .COUT(n5402));
    defparam equal_48_31_2704.INIT0 = 16'h9009;
    defparam equal_48_31_2704.INIT1 = 16'h9009;
    defparam equal_48_31_2704.INJECT1_0 = "YES";
    defparam equal_48_31_2704.INJECT1_1 = "YES";
    CCU2D equal_48_29 (.A0(count_32_bit[10]), .B0(count_32_bit[9]), .C0(count_32_bit[1]), 
          .D0(count_32_bit[0]), .A1(count_32_bit[7]), .B1(count_target[7]), 
          .C1(count_32_bit[6]), .D1(count_target[6]), .CIN(n5400), .COUT(n5401));
    defparam equal_48_29.INIT0 = 16'h0001;
    defparam equal_48_29.INIT1 = 16'h9009;
    defparam equal_48_29.INJECT1_0 = "YES";
    defparam equal_48_29.INJECT1_1 = "YES";
    FD1S3JX s_en_39 (.D(n63), .CK(n11), .PD(n4336), .Q(s_en_i));
    defparam s_en_39.GSR = "DISABLED";
    LUT4 n5932_bdd_4_lut_then_4_lut (.A(n6034), .B(n756[0]), .C(n756[2]), 
         .D(idx[1]), .Z(n5982)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;
    defparam n5932_bdd_4_lut_then_4_lut.init = 16'h0a22;
    FD1S3BX current_state_FSM_i1 (.D(n3684), .CK(n11), .PD(rst_c), .Q(n2029[0]));
    defparam current_state_FSM_i1.GSR = "DISABLED";
    CCU2D equal_48_27 (.A0(count_32_bit[18]), .B0(count_32_bit[17]), .C0(count_32_bit[16]), 
          .D0(count_32_bit[15]), .A1(count_32_bit[14]), .B1(count_32_bit[13]), 
          .C1(count_32_bit[12]), .D1(count_32_bit[11]), .CIN(n5399), .COUT(n5400));
    defparam equal_48_27.INIT0 = 16'h0001;
    defparam equal_48_27.INIT1 = 16'h0001;
    defparam equal_48_27.INJECT1_0 = "YES";
    defparam equal_48_27.INJECT1_1 = "YES";
    CCU2D equal_48_25 (.A0(count_32_bit[26]), .B0(count_32_bit[25]), .C0(count_32_bit[24]), 
          .D0(count_32_bit[23]), .A1(count_32_bit[22]), .B1(count_32_bit[21]), 
          .C1(count_32_bit[20]), .D1(count_32_bit[19]), .CIN(n5398), .COUT(n5399));
    defparam equal_48_25.INIT0 = 16'h0001;
    defparam equal_48_25.INIT1 = 16'h0001;
    defparam equal_48_25.INJECT1_0 = "YES";
    defparam equal_48_25.INJECT1_1 = "YES";
    CCU2D add_49_3 (.A0(n756[1]), .B0(n4836), .C0(GND_net), .D0(GND_net), 
          .A1(n756[2]), .B1(n150), .C1(GND_net), .D1(GND_net), .CIN(n5894), 
          .S0(n756[1]), .S1(n756[2]));
    defparam add_49_3.INIT0 = 16'h7888;
    defparam add_49_3.INIT1 = 16'hf000;
    defparam add_49_3.INJECT1_0 = "NO";
    defparam add_49_3.INJECT1_1 = "NO";
    FD1P3AX count_32_bit_633__i28 (.D(n130_adj_9[28]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[28]));
    defparam count_32_bit_633__i28.GSR = "ENABLED";
    OBZ sclk_pad (.I(GND_net), .T(VCC_net), .O(sclk));
    GSR GSR_INST (.GSR(n2568));
    LUT4 i1_2_lut_adj_7 (.A(n2029[4]), .B(s_en_i), .Z(n5240)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'h8888;
    CCU2D equal_48_0 (.A0(count_32_bit[8]), .B0(count_target[8]), .C0(GND_net), 
          .D0(GND_net), .A1(count_32_bit[30]), .B1(count_32_bit[29]), 
          .C1(count_32_bit[28]), .D1(count_32_bit[27]), .COUT(n5398));
    defparam equal_48_0.INIT0 = 16'h9000;
    defparam equal_48_0.INIT1 = 16'h0001;
    defparam equal_48_0.INJECT1_0 = "NO";
    defparam equal_48_0.INJECT1_1 = "YES";
    FD1P3AX count_32_bit_633__i29 (.D(n130_adj_9[29]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[29]));
    defparam count_32_bit_633__i29.GSR = "ENABLED";
    FD1P3AX count_32_bit_633__i30 (.D(n130_adj_9[30]), .SP(do_count), .CK(clk_c), 
            .Q(count_32_bit[30]));
    defparam count_32_bit_633__i30.GSR = "ENABLED";
    CCU2D add_49_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n756[0]), .B1(n4836), .C1(GND_net), .D1(GND_net), .COUT(n5894), 
          .S1(n756[0]));
    defparam add_49_1.INIT0 = 16'hF000;
    defparam add_49_1.INIT1 = 16'h7777;
    defparam add_49_1.INJECT1_0 = "NO";
    defparam add_49_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module shift_reg_16_bit
//

module shift_reg_16_bit (GND_net, n63, clk_c, rst_c, n4336, n11, 
            n5979, n16, \idx[1] , \spi_packet[13] , n4822, n5975, 
            n5976, shift_strobe, n4836, n787, n785, n5937, n5978, 
            n132, n270, mosi_c, n4962);
    input GND_net;
    output n63;
    input clk_c;
    input rst_c;
    output n4336;
    input n11;
    input n5979;
    input n16;
    input \idx[1] ;
    input \spi_packet[13] ;
    input n4822;
    input n5975;
    input n5976;
    input shift_strobe;
    input n4836;
    input n787;
    input n785;
    input n5937;
    input n5978;
    input n132;
    input n270;
    output mosi_c;
    input n4962;
    
    wire [31:0]shift_count;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/shift_reg_16_bit.vhd(21[8:19])
    wire shift_state;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/shift_reg_16_bit.vhd(19[8:19])
    wire shift_state_next;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/shift_reg_16_bit.vhd(20[8:24])
    wire [15:0]data;   // c:/users/andrewpc1/documents/github/ap1220_control/ap1220_control/diamond/../firmware/shift_reg_16_bit.vhd(22[8:12])
    
    wire n5554;
    wire [31:0]n134;
    
    wire n5555, n5553, n5969, n5552, n155_adj_1, n5970, n4340, 
        n2480, n5551, n5550, n5549, n2471, n2477, n2484, n2483, 
        n2482, n5938, n2479, n2478, n2476, n2475, n2474, n2473, 
        n2472, n5989, n36, n50, n44, n5640, n54, n40, n52, 
        n5564, n5563, n5562, n5561, n58, n5560, n39, n5559, 
        n48, n56, n60, n5987, n5988, n55, n5558, n5557, n5556;
    
    CCU2D shift_count_635_add_4_13 (.A0(shift_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5554), .COUT(n5555), .S0(n134[11]), 
          .S1(n134[12]));
    defparam shift_count_635_add_4_13.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_13.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_13.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_13.INJECT1_1 = "NO";
    CCU2D shift_count_635_add_4_11 (.A0(shift_count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5553), .COUT(n5554), .S0(n134[9]), .S1(n134[10]));
    defparam shift_count_635_add_4_11.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_11.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_11.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_11.INJECT1_1 = "NO";
    LUT4 i1340_2_lut_rep_13 (.A(n63), .B(shift_state), .Z(n5969)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1340_2_lut_rep_13.init = 16'h4444;
    FD1S3IX shift_state_38 (.D(shift_state_next), .CK(clk_c), .CD(rst_c), 
            .Q(shift_state));
    defparam shift_state_38.GSR = "DISABLED";
    LUT4 i1782_1_lut (.A(shift_state), .Z(n4336)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1782_1_lut.init = 16'h5555;
    CCU2D shift_count_635_add_4_9 (.A0(shift_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_count[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5552), .COUT(n5553), .S0(n134[7]), .S1(n134[8]));
    defparam shift_count_635_add_4_9.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_9.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_9.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_9.INJECT1_1 = "NO";
    FD1S3AX shift_state_next_40 (.D(n155_adj_1), .CK(n11), .Q(shift_state_next));
    defparam shift_state_next_40.GSR = "DISABLED";
    FD1P3JX shift_count_635__i4 (.D(n134[4]), .SP(n5970), .PD(n4340), 
            .CK(n11), .Q(shift_count[4]));
    defparam shift_count_635__i4.GSR = "DISABLED";
    LUT4 mux_562_i12_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[10]), 
         .D(n5979), .Z(n2480)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !(D)))) */ ;
    defparam mux_562_i12_3_lut_4_lut.init = 16'h40fb;
    CCU2D shift_count_635_add_4_7 (.A0(shift_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5551), .COUT(n5552), .S0(n134[5]), .S1(n134[6]));
    defparam shift_count_635_add_4_7.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_7.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_7.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_7.INJECT1_1 = "NO";
    FD1P3IX shift_count_635__i5 (.D(n134[5]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[5]));
    defparam shift_count_635__i5.GSR = "DISABLED";
    FD1P3IX shift_count_635__i6 (.D(n134[6]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[6]));
    defparam shift_count_635__i6.GSR = "DISABLED";
    CCU2D shift_count_635_add_4_5 (.A0(shift_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5550), .COUT(n5551), .S0(n134[3]), .S1(n134[4]));
    defparam shift_count_635_add_4_5.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_5.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_5.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_5.INJECT1_1 = "NO";
    FD1P3IX shift_count_635__i7 (.D(n134[7]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[7]));
    defparam shift_count_635__i7.GSR = "DISABLED";
    FD1P3IX shift_count_635__i8 (.D(n134[8]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[8]));
    defparam shift_count_635__i8.GSR = "DISABLED";
    FD1P3IX shift_count_635__i9 (.D(n134[9]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[9]));
    defparam shift_count_635__i9.GSR = "DISABLED";
    CCU2D shift_count_635_add_4_3 (.A0(shift_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5549), .COUT(n5550), .S0(n134[1]), .S1(n134[2]));
    defparam shift_count_635_add_4_3.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_3.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_3.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_3.INJECT1_1 = "NO";
    FD1P3IX shift_count_635__i10 (.D(n134[10]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[10]));
    defparam shift_count_635__i10.GSR = "DISABLED";
    CCU2D shift_count_635_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5549), .S1(n134[0]));
    defparam shift_count_635_add_4_1.INIT0 = 16'hF000;
    defparam shift_count_635_add_4_1.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_1.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_562_i3_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[1]), 
         .D(n16), .Z(n2471)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !(D)))) */ ;
    defparam mux_562_i3_3_lut_4_lut.init = 16'h40fb;
    FD1P3IX shift_count_635__i11 (.D(n134[11]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[11]));
    defparam shift_count_635__i11.GSR = "DISABLED";
    FD1P3IX shift_count_635__i12 (.D(n134[12]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[12]));
    defparam shift_count_635__i12.GSR = "DISABLED";
    FD1P3IX shift_count_635__i13 (.D(n134[13]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[13]));
    defparam shift_count_635__i13.GSR = "DISABLED";
    LUT4 mux_562_i9_4_lut (.A(\idx[1] ), .B(data[7]), .C(n5969), .D(\spi_packet[13] ), 
         .Z(n2477)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_562_i9_4_lut.init = 16'hcac0;
    FD1P3IX shift_count_635__i14 (.D(n134[14]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[14]));
    defparam shift_count_635__i14.GSR = "DISABLED";
    FD1P3IX shift_count_635__i15 (.D(n134[15]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[15]));
    defparam shift_count_635__i15.GSR = "DISABLED";
    FD1P3IX shift_count_635__i16 (.D(n134[16]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[16]));
    defparam shift_count_635__i16.GSR = "DISABLED";
    FD1P3IX shift_count_635__i17 (.D(n134[17]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[17]));
    defparam shift_count_635__i17.GSR = "DISABLED";
    FD1P3IX shift_count_635__i18 (.D(n134[18]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[18]));
    defparam shift_count_635__i18.GSR = "DISABLED";
    FD1P3AX data_i0_i15 (.D(n2484), .SP(n155_adj_1), .CK(n11), .Q(data[15]));
    defparam data_i0_i15.GSR = "DISABLED";
    FD1P3IX shift_count_635__i19 (.D(n134[19]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[19]));
    defparam shift_count_635__i19.GSR = "DISABLED";
    FD1P3IX shift_count_635__i20 (.D(n134[20]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[20]));
    defparam shift_count_635__i20.GSR = "DISABLED";
    FD1P3IX shift_count_635__i21 (.D(n134[21]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[21]));
    defparam shift_count_635__i21.GSR = "DISABLED";
    FD1P3AX data_i0_i14 (.D(n2483), .SP(n155_adj_1), .CK(n11), .Q(data[14]));
    defparam data_i0_i14.GSR = "DISABLED";
    FD1P3AX data_i0_i13 (.D(n2482), .SP(n155_adj_1), .CK(n11), .Q(data[13]));
    defparam data_i0_i13.GSR = "DISABLED";
    FD1P3AX data_i0_i12 (.D(n5938), .SP(n155_adj_1), .CK(n11), .Q(data[12]));
    defparam data_i0_i12.GSR = "DISABLED";
    FD1P3AX data_i0_i11 (.D(n2480), .SP(n155_adj_1), .CK(n11), .Q(data[11]));
    defparam data_i0_i11.GSR = "DISABLED";
    FD1P3AX data_i0_i10 (.D(n2479), .SP(n155_adj_1), .CK(n11), .Q(data[10]));
    defparam data_i0_i10.GSR = "DISABLED";
    FD1P3AX data_i0_i9 (.D(n2478), .SP(n155_adj_1), .CK(n11), .Q(data[9]));
    defparam data_i0_i9.GSR = "DISABLED";
    FD1P3AX data_i0_i8 (.D(n2477), .SP(n155_adj_1), .CK(n11), .Q(data[8]));
    defparam data_i0_i8.GSR = "DISABLED";
    FD1P3AX data_i0_i7 (.D(n2476), .SP(n155_adj_1), .CK(n11), .Q(data[7]));
    defparam data_i0_i7.GSR = "DISABLED";
    FD1P3AX data_i0_i6 (.D(n2475), .SP(n155_adj_1), .CK(n11), .Q(data[6]));
    defparam data_i0_i6.GSR = "DISABLED";
    FD1P3AX data_i0_i5 (.D(n2474), .SP(n155_adj_1), .CK(n11), .Q(data[5]));
    defparam data_i0_i5.GSR = "DISABLED";
    FD1P3AX data_i0_i4 (.D(n2473), .SP(n155_adj_1), .CK(n11), .Q(data[4]));
    defparam data_i0_i4.GSR = "DISABLED";
    FD1P3AX data_i0_i3 (.D(n2472), .SP(n155_adj_1), .CK(n11), .Q(data[3]));
    defparam data_i0_i3.GSR = "DISABLED";
    FD1P3AX data_i0_i2 (.D(n2471), .SP(n155_adj_1), .CK(n11), .Q(data[2]));
    defparam data_i0_i2.GSR = "DISABLED";
    FD1P3AX data_i0_i1 (.D(n5989), .SP(n155_adj_1), .CK(n11), .Q(data[1]));
    defparam data_i0_i1.GSR = "DISABLED";
    LUT4 mux_562_i4_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[2]), 
         .D(n5979), .Z(n2472)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !(D)))) */ ;
    defparam mux_562_i4_3_lut_4_lut.init = 16'h40fb;
    LUT4 mux_562_i10_4_lut (.A(n5979), .B(data[8]), .C(n5969), .D(n4822), 
         .Z(n2478)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;
    defparam mux_562_i10_4_lut.init = 16'hc5cf;
    LUT4 mux_562_i11_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[9]), 
         .D(n5975), .Z(n2479)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !(D)))) */ ;
    defparam mux_562_i11_3_lut_4_lut.init = 16'h40fb;
    LUT4 mux_562_i8_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[6]), 
         .D(n5979), .Z(n2476)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !(D)))) */ ;
    defparam mux_562_i8_3_lut_4_lut.init = 16'h40fb;
    LUT4 i5_2_lut (.A(shift_count[16]), .B(shift_count[21]), .Z(n36)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(shift_count[23]), .B(shift_count[27]), .C(shift_count[24]), 
         .D(shift_count[28]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i13_2_lut (.A(shift_count[26]), .B(shift_count[3]), .Z(n44)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13_2_lut.init = 16'heeee;
    LUT4 i2976_4_lut (.A(n5979), .B(n5976), .C(n5969), .D(\idx[1] ), 
         .Z(n5640)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;
    defparam i2976_4_lut.init = 16'h0405;
    LUT4 i23_4_lut (.A(shift_count[4]), .B(shift_count[10]), .C(shift_count[6]), 
         .D(shift_count[18]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23_4_lut.init = 16'hfffe;
    LUT4 i9_2_lut (.A(shift_count[7]), .B(shift_count[8]), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i21_4_lut (.A(shift_count[11]), .B(shift_count[14]), .C(shift_count[12]), 
         .D(shift_count[19]), .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21_4_lut.init = 16'hfffe;
    CCU2D shift_count_635_add_4_33 (.A0(shift_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5564), .S0(n134[31]));
    defparam shift_count_635_add_4_33.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_33.INIT1 = 16'h0000;
    defparam shift_count_635_add_4_33.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_33.INJECT1_1 = "NO";
    FD1P3IX shift_count_635__i22 (.D(n134[22]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[22]));
    defparam shift_count_635__i22.GSR = "DISABLED";
    CCU2D shift_count_635_add_4_31 (.A0(shift_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5563), .COUT(n5564), .S0(n134[29]), 
          .S1(n134[30]));
    defparam shift_count_635_add_4_31.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_31.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_31.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_31.INJECT1_1 = "NO";
    CCU2D shift_count_635_add_4_29 (.A0(shift_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5562), .COUT(n5563), .S0(n134[27]), 
          .S1(n134[28]));
    defparam shift_count_635_add_4_29.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_29.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_29.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_29.INJECT1_1 = "NO";
    CCU2D shift_count_635_add_4_27 (.A0(shift_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5561), .COUT(n5562), .S0(n134[25]), 
          .S1(n134[26]));
    defparam shift_count_635_add_4_27.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_27.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_27.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_27.INJECT1_1 = "NO";
    FD1P3IX shift_count_635__i23 (.D(n134[23]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[23]));
    defparam shift_count_635__i23.GSR = "DISABLED";
    LUT4 i27_4_lut (.A(shift_count[20]), .B(n54), .C(n44), .D(shift_count[22]), 
         .Z(n58)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27_4_lut.init = 16'hfffe;
    CCU2D shift_count_635_add_4_25 (.A0(shift_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5560), .COUT(n5561), .S0(n134[23]), 
          .S1(n134[24]));
    defparam shift_count_635_add_4_25.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_25.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_25.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_25.INJECT1_1 = "NO";
    FD1P3IX shift_count_635__i24 (.D(n134[24]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[24]));
    defparam shift_count_635__i24.GSR = "DISABLED";
    FD1P3IX shift_count_635__i25 (.D(n134[25]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[25]));
    defparam shift_count_635__i25.GSR = "DISABLED";
    LUT4 i8_2_lut (.A(shift_count[30]), .B(shift_count[5]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8_2_lut.init = 16'heeee;
    FD1P3IX shift_count_635__i26 (.D(n134[26]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[26]));
    defparam shift_count_635__i26.GSR = "DISABLED";
    FD1P3IX shift_count_635__i27 (.D(n134[27]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[27]));
    defparam shift_count_635__i27.GSR = "DISABLED";
    CCU2D shift_count_635_add_4_23 (.A0(shift_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5559), .COUT(n5560), .S0(n134[21]), 
          .S1(n134[22]));
    defparam shift_count_635_add_4_23.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_23.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_23.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_23.INJECT1_1 = "NO";
    LUT4 i17_4_lut (.A(shift_count[25]), .B(shift_count[0]), .C(shift_count[29]), 
         .D(shift_count[9]), .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i25_4_lut (.A(shift_count[13]), .B(n50), .C(n36), .D(shift_count[15]), 
         .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i25_4_lut.init = 16'hfffe;
    LUT4 i29_4_lut (.A(n39), .B(n58), .C(n52), .D(n40), .Z(n60)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29_4_lut.init = 16'hfffe;
    PFUMX i3057 (.BLUT(n5987), .ALUT(n5988), .C0(n5969), .Z(n5989));
    FD1P3IX shift_count_635__i28 (.D(n134[28]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[28]));
    defparam shift_count_635__i28.GSR = "DISABLED";
    LUT4 i2990_2_lut_2_lut_3_lut_2_lut (.A(shift_strobe), .B(shift_state), 
         .Z(n4340)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2990_2_lut_2_lut_3_lut_2_lut.init = 16'h1111;
    LUT4 i24_4_lut (.A(shift_count[2]), .B(n48), .C(shift_count[1]), .D(shift_count[17]), 
         .Z(n55)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i2985_4_lut (.A(n55), .B(shift_count[31]), .C(n60), .D(n56), 
         .Z(n63)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i2985_4_lut.init = 16'hcccd;
    FD1P3IX shift_count_635__i29 (.D(n134[29]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[29]));
    defparam shift_count_635__i29.GSR = "DISABLED";
    LUT4 mux_562_i2_4_lut_else_1_lut (.A(\idx[1] ), .B(n4836), .C(n787), 
         .D(n785), .Z(n5987)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam mux_562_i2_4_lut_else_1_lut.init = 16'h226a;
    LUT4 mux_562_i2_4_lut_then_1_lut (.A(data[0]), .Z(n5988)) /* synthesis lut_function=(A) */ ;
    defparam mux_562_i2_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 i623_3_lut_rep_14 (.A(shift_strobe), .B(n63), .C(shift_state), 
         .Z(n5970)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam i623_3_lut_rep_14.init = 16'h3535;
    LUT4 n5937_bdd_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[11]), 
         .D(n5937), .Z(n5938)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam n5937_bdd_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_562_i16_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[14]), 
         .D(n5979), .Z(n2484)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !(D)))) */ ;
    defparam mux_562_i16_3_lut_4_lut.init = 16'h40fb;
    LUT4 mux_562_i15_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[13]), 
         .D(n5978), .Z(n2483)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !(D)))) */ ;
    defparam mux_562_i15_3_lut_4_lut.init = 16'h40fb;
    LUT4 mux_562_i14_3_lut_4_lut (.A(n63), .B(shift_state), .C(data[12]), 
         .D(\spi_packet[13] ), .Z(n2482)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_562_i14_3_lut_4_lut.init = 16'hfb40;
    LUT4 i25_3_lut (.A(shift_strobe), .B(n63), .C(shift_state), .Z(n155_adj_1)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i25_3_lut.init = 16'h3a3a;
    FD1P3IX shift_count_635__i30 (.D(n134[30]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[30]));
    defparam shift_count_635__i30.GSR = "DISABLED";
    FD1P3AX data_i0_i0 (.D(n5640), .SP(n155_adj_1), .CK(n11), .Q(data[0]));
    defparam data_i0_i0.GSR = "DISABLED";
    CCU2D shift_count_635_add_4_21 (.A0(shift_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5558), .COUT(n5559), .S0(n134[19]), 
          .S1(n134[20]));
    defparam shift_count_635_add_4_21.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_21.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_21.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_21.INJECT1_1 = "NO";
    FD1P3IX shift_count_635__i31 (.D(n134[31]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[31]));
    defparam shift_count_635__i31.GSR = "DISABLED";
    CCU2D shift_count_635_add_4_19 (.A0(shift_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5557), .COUT(n5558), .S0(n134[17]), 
          .S1(n134[18]));
    defparam shift_count_635_add_4_19.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_19.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_19.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_19.INJECT1_1 = "NO";
    FD1P3IX shift_count_635__i0 (.D(n134[0]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[0]));
    defparam shift_count_635__i0.GSR = "DISABLED";
    LUT4 mux_562_i5_4_lut (.A(n132), .B(data[3]), .C(n5969), .D(n270), 
         .Z(n2473)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_562_i5_4_lut.init = 16'hcfca;
    CCU2D shift_count_635_add_4_17 (.A0(shift_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5556), .COUT(n5557), .S0(n134[15]), 
          .S1(n134[16]));
    defparam shift_count_635_add_4_17.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_17.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_17.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_17.INJECT1_1 = "NO";
    OFS1P3DX s_out_43 (.D(data[15]), .SP(n5969), .SCLK(n11), .CD(GND_net), 
            .Q(mosi_c));
    defparam s_out_43.GSR = "DISABLED";
    LUT4 mux_562_i6_4_lut (.A(\idx[1] ), .B(data[4]), .C(n5969), .D(n4962), 
         .Z(n2474)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam mux_562_i6_4_lut.init = 16'hc0c5;
    FD1P3IX shift_count_635__i1 (.D(n134[1]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[1]));
    defparam shift_count_635__i1.GSR = "DISABLED";
    CCU2D shift_count_635_add_4_15 (.A0(shift_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5555), .COUT(n5556), .S0(n134[13]), 
          .S1(n134[14]));
    defparam shift_count_635_add_4_15.INIT0 = 16'h0555;
    defparam shift_count_635_add_4_15.INIT1 = 16'h0555;
    defparam shift_count_635_add_4_15.INJECT1_0 = "NO";
    defparam shift_count_635_add_4_15.INJECT1_1 = "NO";
    LUT4 mux_562_i7_4_lut (.A(n5979), .B(data[5]), .C(n5969), .D(n4822), 
         .Z(n2475)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_562_i7_4_lut.init = 16'hc5c0;
    FD1P3IX shift_count_635__i2 (.D(n134[2]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[2]));
    defparam shift_count_635__i2.GSR = "DISABLED";
    FD1P3IX shift_count_635__i3 (.D(n134[3]), .SP(n5970), .CD(n4340), 
            .CK(n11), .Q(shift_count[3]));
    defparam shift_count_635__i3.GSR = "DISABLED";
    
endmodule
