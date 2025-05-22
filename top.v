`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////
////// Company: 
////// Engineer: Anurag Sharma
////// 
////// Create Date: 16.09.2024 09:59:56
////// Design Name: 
////// Module Name: conv
////// Project Name: 
////// Target Devices: 
////// Tool Versions: 
////// Description: 
////// 
////// Dependencies: 
////// 
////// Revision:
////// Revision 0.01 - File Created
////// Additional Comments:
////// 
//////////////////////////////////////////////////////////////////////////////////////


module conv(
input        i_clk,
input        i_rst,
input [511:0] i_pixel_data,
output [15:0] Row_out_00,
output [15:0] Row_out_01,
output [15:0] Row_out_02,
output [15:0] Row_out_03,
output [15:0] Row_out_04,
output [15:0] Row_out_05,
output [15:0] Row_out_06,
output [15:0] Row_out_07,


output [15:0] Row_out_10,
output [15:0] Row_out_11,
output [15:0] Row_out_12,
output [15:0] Row_out_13,
output [15:0] Row_out_14,
output [15:0] Row_out_15,
output [15:0] Row_out_16,
output [15:0] Row_out_17,

output [15:0] Row_out_20,
output [15:0] Row_out_21,
output [15:0] Row_out_22,
output [15:0] Row_out_23,
output [15:0] Row_out_24,
output [15:0] Row_out_25,
output [15:0] Row_out_26,
output [15:0] Row_out_27,

output [15:0] Row_out_30,
output [15:0] Row_out_31,
output [15:0] Row_out_32,
output [15:0] Row_out_33,
output [15:0] Row_out_34,
output [15:0] Row_out_35,
output [15:0] Row_out_36,
output [15:0] Row_out_37,

output [15:0] Row_out_40,
output [15:0] Row_out_41,
output [15:0] Row_out_42,
output [15:0] Row_out_43,
output [15:0] Row_out_44,
output [15:0] Row_out_45,
output [15:0] Row_out_46,
output [15:0] Row_out_47,

output [15:0] Row_out_50,
output [15:0] Row_out_51,
output [15:0] Row_out_52,
output [15:0] Row_out_53,
output [15:0] Row_out_54,
output [15:0] Row_out_55,
output [15:0] Row_out_56,
output [15:0] Row_out_57,

output [15:0] Row_out_60,
output [15:0] Row_out_61,
output [15:0] Row_out_62,
output [15:0] Row_out_63,
output [15:0] Row_out_64,
output [15:0] Row_out_65,
output [15:0] Row_out_66,
output [15:0] Row_out_67,


output [15:0] Row_out_70,
output [15:0] Row_out_71,
output [15:0] Row_out_72,
output [15:0] Row_out_73,
output [15:0] Row_out_74,
output [15:0] Row_out_75,
output [15:0] Row_out_76,
output [15:0] Row_out_77

    );
    


reg [15:0] multRow0[7:0];
reg [15:0] multRow1[7:0];
reg [15:0] multRow2[7:0];
reg [15:0] multRow3[7:0];
reg [15:0] multRow4[7:0];
reg [15:0] multRow5[7:0];
reg [15:0] multRow6[7:0];
reg [15:0] multRow7[7:0];
reg [15:0] Row0 [7:0];
reg [15:0] Row1 [7:0];
reg [15:0] Row2 [7:0] ;
reg [15:0] Row3 [7:0];
reg [15:0] Row4 [7:0];
reg [15:0] Row5 [7:0];
reg [15:0] Row6 [7:0];
reg [15:0] Row7 [7:0];



imageControl imagecont_inst(
.i_clk(i_clk),
.i_rst(i_rst),

.o_pixel_data(i_pixel_data)


);


always @(posedge i_clk)
begin
      
        
            multRow0[0] <=  i_pixel_data[0*8+:8] + i_pixel_data[8*8+:8] +  i_pixel_data[16*8+:8] + i_pixel_data[24*8+:8] + i_pixel_data[32*8+:8] + i_pixel_data[40*8+:8] + i_pixel_data[48*8+:8] + i_pixel_data[56*8+:8];
            multRow0[1] <=  i_pixel_data[1*8+:8] + i_pixel_data[9*8+:8] +  i_pixel_data[17*8+:8] + i_pixel_data[25*8+:8] + i_pixel_data[33*8+:8] + i_pixel_data[41*8+:8] + i_pixel_data[49*8+:8] + i_pixel_data[57*8+:8];
            multRow0[2] <=  i_pixel_data[2*8+:8] + i_pixel_data[10*8+:8] + i_pixel_data[18*8+:8] + i_pixel_data[26*8+:8] + i_pixel_data[34*8+:8] + i_pixel_data[42*8+:8] + i_pixel_data[50*8+:8] + i_pixel_data[58*8+:8];
            multRow0[3] <=  i_pixel_data[3*8+:8] + i_pixel_data[11*8+:8] + i_pixel_data[19*8+:8] + i_pixel_data[27*8+:8] + i_pixel_data[35*8+:8] + i_pixel_data[43*8+:8] + i_pixel_data[51*8+:8] + i_pixel_data[59*8+:8];
            multRow0[4] <=  i_pixel_data[4*8+:8] + i_pixel_data[12*8+:8] + i_pixel_data[20*8+:8] + i_pixel_data[28*8+:8] + i_pixel_data[36*8+:8] + i_pixel_data[44*8+:8] + i_pixel_data[52*8+:8] + i_pixel_data[60*8+:8];
            multRow0[5] <=  i_pixel_data[5*8+:8] + i_pixel_data[13*8+:8] + i_pixel_data[21*8+:8] + i_pixel_data[29*8+:8] + i_pixel_data[37*8+:8] + i_pixel_data[45*8+:8] + i_pixel_data[53*8+:8] + i_pixel_data[61*8+:8];
            multRow0[6] <=  i_pixel_data[6*8+:8] + i_pixel_data[14*8+:8] + i_pixel_data[22*8+:8] + i_pixel_data[30*8+:8] + i_pixel_data[38*8+:8] + i_pixel_data[46*8+:8] + i_pixel_data[54*8+:8] + i_pixel_data[62*8+:8];
            multRow0[7] <=  i_pixel_data[7*8+:8] + i_pixel_data[15*8+:8] + i_pixel_data[23*8+:8] + i_pixel_data[31*8+:8] + i_pixel_data[39*8+:8] + i_pixel_data[47*8+:8] + i_pixel_data[55*8+:8] + i_pixel_data[63*8+:8];
            
            
            multRow1[0] <=  i_pixel_data[8*8+:8] - i_pixel_data[48*8+:8];
            multRow1[1] <=  i_pixel_data[9*8+:8] - i_pixel_data[49*8+:8];
            multRow1[2] <=  i_pixel_data[10*8+:8] - i_pixel_data[50*8+:8];
            multRow1[3] <=  i_pixel_data[11*8+:8] - i_pixel_data[51*8+:8];
            multRow1[4] <=  i_pixel_data[12*8+:8] - i_pixel_data[52*8+:8];
            multRow1[5] <=  i_pixel_data[13*8+:8] - i_pixel_data[53*8+:8];
            multRow1[6] <=  i_pixel_data[14*8+:8] - i_pixel_data[54*8+:8];
            multRow1[7] <=  i_pixel_data[15*8+:8] - i_pixel_data[55*8+:8];
            
            
            multRow2[0] <=  i_pixel_data[0*8+:8] - i_pixel_data[24*8+:8] - i_pixel_data[32*8+:8] + i_pixel_data[56*8+:8];
            multRow2[1] <=  i_pixel_data[1*8+:8] - i_pixel_data[25*8+:8] - i_pixel_data[33*8+:8] + i_pixel_data[57*8+:8];
            multRow2[2] <=  i_pixel_data[2*8+:8] - i_pixel_data[26*8+:8] - i_pixel_data[34*8+:8] + i_pixel_data[58*8+:8];
            multRow2[3] <=  i_pixel_data[3*8+:8] - i_pixel_data[27*8+:8] - i_pixel_data[35*8+:8] + i_pixel_data[59*8+:8];
            multRow2[4] <=  i_pixel_data[4*8+:8] - i_pixel_data[28*8+:8] - i_pixel_data[36*8+:8] + i_pixel_data[60*8+:8];
            multRow2[5] <=  i_pixel_data[5*8+:8] - i_pixel_data[29*8+:8] - i_pixel_data[37*8+:8] + i_pixel_data[61*8+:8];
            multRow2[6] <=  i_pixel_data[6*8+:8] - i_pixel_data[30*8+:8] - i_pixel_data[38*8+:8] + i_pixel_data[62*8+:8];
            multRow2[7] <=  i_pixel_data[7*8+:8] - i_pixel_data[31*8+:8] - i_pixel_data[39*8+:8] + i_pixel_data[63*8+:8];
            
            multRow3[0] <=  i_pixel_data[0*8+:8] - i_pixel_data[56*8+:8];
            multRow3[1] <=  i_pixel_data[1*8+:8] - i_pixel_data[57*8+:8];
            multRow3[2] <=  i_pixel_data[2*8+:8] - i_pixel_data[58*8+:8];
            multRow3[3] <=  i_pixel_data[3*8+:8] - i_pixel_data[59*8+:8];
            multRow3[4] <=  i_pixel_data[4*8+:8] - i_pixel_data[60*8+:8];
            multRow3[5] <=  i_pixel_data[5*8+:8] - i_pixel_data[61*8+:8];
            multRow3[6] <=  i_pixel_data[6*8+:8] - i_pixel_data[62*8+:8];
            multRow3[7] <=  i_pixel_data[7*8+:8] - i_pixel_data[63*8+:8];
            
            multRow4[0] <=  i_pixel_data[0*8+:8] - i_pixel_data[8*8+:8] - i_pixel_data[16*8+:8] + i_pixel_data[24*8+:8] + i_pixel_data[32*8+:8] - i_pixel_data[40*8+:8] - i_pixel_data[48*8+:8] + i_pixel_data[56*8+:8];
            multRow4[1] <=  i_pixel_data[1*8+:8] - i_pixel_data[9*8+:8] - i_pixel_data[17*8+:8] + i_pixel_data[25*8+:8] + i_pixel_data[33*8+:8] - i_pixel_data[41*8+:8] - i_pixel_data[49*8+:8] + i_pixel_data[57*8+:8] ;
            multRow4[2] <=  i_pixel_data[2*8+:8] - i_pixel_data[10*8+:8] - i_pixel_data[18*8+:8] + i_pixel_data[26*8+:8] + i_pixel_data[34*8+:8] - i_pixel_data[42*8+:8] - i_pixel_data[50*8+:8] + i_pixel_data[58*8+:8] ;
            multRow4[3] <=  i_pixel_data[3*8+:8] - i_pixel_data[11*8+:8] - i_pixel_data[19*8+:8] + i_pixel_data[27*8+:8] + i_pixel_data[35*8+:8] - i_pixel_data[43*8+:8] - i_pixel_data[51*8+:8] + i_pixel_data[59*8+:8] ;
            multRow4[4] <=  i_pixel_data[4*8+:8] - i_pixel_data[12*8+:8] - i_pixel_data[20*8+:8] + i_pixel_data[28*8+:8] + i_pixel_data[36*8+:8] - i_pixel_data[44*8+:8] - i_pixel_data[52*8+:8] + i_pixel_data[60*8+:8] ;
            multRow4[5] <=  i_pixel_data[5*8+:8] - i_pixel_data[13*8+:8] - i_pixel_data[21*8+:8] + i_pixel_data[29*8+:8] + i_pixel_data[37*8+:8] - i_pixel_data[45*8+:8] - i_pixel_data[53*8+:8] + i_pixel_data[61*8+:8] ;
            multRow4[6] <=  i_pixel_data[6*8+:8] - i_pixel_data[14*8+:8] - i_pixel_data[22*8+:8] + i_pixel_data[30*8+:8] + i_pixel_data[38*8+:8] - i_pixel_data[46*8+:8] - i_pixel_data[54*8+:8] + i_pixel_data[62*8+:8] ;
            multRow4[7] <=  i_pixel_data[7*8+:8] - i_pixel_data[15*8+:8] - i_pixel_data[23*8+:8] + i_pixel_data[31*8+:8] + i_pixel_data[39*8+:8] - i_pixel_data[47*8+:8] - i_pixel_data[55*8+:8] + i_pixel_data[63*8+:8] ;
            
            multRow5[0] <=  i_pixel_data[24*8+:8] - i_pixel_data[32*8+:8];
            multRow5[1] <=  i_pixel_data[25*8+:8] - i_pixel_data[33*8+:8];
            multRow5[2] <=  i_pixel_data[26*8+:8] - i_pixel_data[34*8+:8];
            multRow5[3] <=  i_pixel_data[27*8+:8] - i_pixel_data[35*8+:8];
            multRow5[4] <=  i_pixel_data[28*8+:8] - i_pixel_data[36*8+:8];
            multRow5[5] <=  i_pixel_data[29*8+:8] - i_pixel_data[37*8+:8];
            multRow5[6] <=  i_pixel_data[30*8+:8] - i_pixel_data[38*8+:8];
            multRow5[7] <=  i_pixel_data[31*8+:8] - i_pixel_data[39*8+:8];
            
            multRow6[0] <=  - i_pixel_data[8*8+:8] + i_pixel_data[16*8+:8] + i_pixel_data[40*8+:8] - i_pixel_data[48*8+:8];
            multRow6[1] <=  - i_pixel_data[9*8+:8] + i_pixel_data[17*8+:8] + i_pixel_data[41*8+:8] - i_pixel_data[49*8+:8];
            multRow6[2] <=  - i_pixel_data[10*8+:8] + i_pixel_data[18*8+:8] + i_pixel_data[42*8+:8] - i_pixel_data[50*8+:8];
            multRow6[3] <=  - i_pixel_data[11*8+:8] + i_pixel_data[19*8+:8] + i_pixel_data[43*8+:8] - i_pixel_data[51*8+:8];
            multRow6[4] <=  - i_pixel_data[12*8+:8] + i_pixel_data[20*8+:8] + i_pixel_data[44*8+:8] - i_pixel_data[52*8+:8];
            multRow6[5] <=  - i_pixel_data[13*8+:8] + i_pixel_data[21*8+:8] + i_pixel_data[45*8+:8] - i_pixel_data[53*8+:8];
            multRow6[6] <=  - i_pixel_data[14*8+:8] + i_pixel_data[22*8+:8] + i_pixel_data[46*8+:8] - i_pixel_data[54*8+:8];
            multRow6[7] <=  - i_pixel_data[15*8+:8] + i_pixel_data[23*8+:8] + i_pixel_data[47*8+:8] - i_pixel_data[55*8+:8];
            
            multRow7[0] <=  i_pixel_data[16*8+:8] - i_pixel_data[40*8+:8];
            multRow7[1] <=  i_pixel_data[17*8+:8] - i_pixel_data[41*8+:8];
            multRow7[2] <=  i_pixel_data[18*8+:8] - i_pixel_data[42*8+:8];
            multRow7[3] <=  i_pixel_data[19*8+:8] - i_pixel_data[43*8+:8];
            multRow7[4] <=  i_pixel_data[20*8+:8] - i_pixel_data[44*8+:8];
            multRow7[5] <=  i_pixel_data[21*8+:8] - i_pixel_data[45*8+:8];
            multRow7[6] <=  i_pixel_data[22*8+:8] - i_pixel_data[46*8+:8];
            multRow7[7] <=  i_pixel_data[23*8+:8] - i_pixel_data[47*8+:8];
  
end
    

always@(posedge i_clk)   
  
  begin
    
    Row0[0] <= multRow0[0] + multRow0[1] + multRow0[2] + multRow0[3] + multRow0[4] + multRow0[5] + multRow0[6] + multRow0[7];
    Row0[1] <= multRow0[1] - multRow0[6];
    Row0[2] <= multRow0[0] - multRow0[3] - multRow0[4] + multRow0[7];
    Row0[3] <= multRow0[0] -  multRow0[7];
    Row0[4] <= multRow0[0] - multRow0[1] - multRow0[2] + multRow0[3] + multRow0[4] - multRow0[5] - multRow0[6] + multRow0[7];
    Row0[5] <= multRow0[3] - multRow0[4];
    Row0[6] <= - multRow0[1] + multRow0[2] + multRow0[5] - multRow0[6];
    Row0[7] <= multRow0[2] - multRow0[5];
    
    
    Row1[0] <= multRow1[0] + multRow1[1] + multRow1[2] + multRow1[3] + multRow1[4] + multRow1[5] + multRow1[6] + multRow1[7];
    Row1[1] <= multRow1[1] - multRow1[6];
    Row1[2] <= multRow1[0] - multRow1[3] - multRow1[4] + multRow1[7];
    Row1[3] <= multRow1[0] -  multRow1[7];
    Row1[4] <= multRow1[0] - multRow1[1] - multRow1[2] + multRow1[3] + multRow1[4] - multRow1[5] - multRow1[6] + multRow1[7];
    Row1[5] <= multRow1[3] - multRow1[4];
    Row1[6] <= - multRow1[1] + multRow1[2] + multRow1[5] - multRow1[6];
    Row1[7] <= multRow1[2] - multRow1[5];
    
    
    Row2[0] <= multRow2[0] + multRow2[1] + multRow2[2] + multRow2[3] + multRow2[4] + multRow2[5] + multRow2[6] + multRow2[7];
    Row2[1] <= multRow2[1] - multRow2[6];
    Row2[2] <= multRow2[0] - multRow2[3] - multRow2[4] + multRow2[7];
    Row2[3] <= multRow2[0] -  multRow2[7];
    Row2[4] <= multRow2[0] - multRow2[1] - multRow2[2] + multRow2[3] + multRow2[4] - multRow2[5] - multRow2[6] + multRow2[7];
    Row2[5] <= multRow2[3] - multRow2[4];
    Row2[6] <= - multRow2[1] + multRow2[2] + multRow2[5] - multRow2[6];
    Row2[7] <= multRow2[2] - multRow2[5];
    
    
    Row3[0] <= multRow3[0] + multRow3[1] + multRow3[2] + multRow3[3] + multRow3[4] + multRow3[5] + multRow3[6] + multRow3[7];
    Row3[1] <= multRow3[1] - multRow3[6];
    Row3[2] <= multRow3[0] - multRow3[3] - multRow3[4] + multRow3[7];
    Row3[3] <= multRow3[0] -  multRow3[7];
    Row3[4] <= multRow3[0] - multRow3[1] - multRow3[2] + multRow3[3] + multRow3[4] - multRow3[5] - multRow3[6] + multRow3[7];
    Row3[5] <= multRow3[3] - multRow3[4];
    Row3[6] <= - multRow3[1] + multRow3[2] + multRow3[5] - multRow3[6];
    Row3[7] <= multRow3[2] - multRow3[5];
    
    Row4[0] <= multRow4[0] + multRow4[1] + multRow4[2] + multRow4[3] + multRow4[4] + multRow4[5] + multRow4[6] + multRow4[7];
    Row4[1] <= multRow4[1] - multRow4[6];
    Row4[2] <= multRow4[0] - multRow4[3] - multRow4[4] + multRow4[7];
    Row4[3] <= multRow4[0] -  multRow4[7];
    Row4[4] <= multRow4[0] - multRow4[1] - multRow4[2] + multRow4[3] + multRow4[4] - multRow4[5] - multRow4[6] + multRow4[7];
    Row4[5] <= multRow4[3] - multRow4[4];
    Row4[6] <= - multRow4[1] + multRow4[2] + multRow4[5] - multRow4[6];
    Row4[7] <= multRow4[2] - multRow4[5];
    
    Row5[0] <= multRow5[0] + multRow5[1] + multRow5[2] + multRow5[3] + multRow5[4] + multRow5[5] + multRow5[6] + multRow5[7];
    Row5[1] <= multRow5[1] - multRow5[6];
    Row5[2] <= multRow5[0] - multRow5[3] - multRow5[4] + multRow5[7];
    Row5[3] <= multRow5[0] -  multRow5[7];
    Row5[4] <= multRow5[0] - multRow5[1] - multRow5[2] + multRow5[3] + multRow5[4] - multRow5[5] - multRow5[6] + multRow5[7];
    Row5[5] <= multRow5[3] - multRow5[4];
    Row5[6] <= - multRow5[1] + multRow5[2] + multRow5[5] - multRow5[6];
    Row5[7] <= multRow5[2] - multRow5[5];
    
    
    Row6[0] <= multRow6[0] + multRow6[1] + multRow6[2] + multRow6[3] + multRow6[4] + multRow6[5] + multRow6[6] + multRow6[7];
    Row6[1] <= multRow6[1] - multRow6[6];
    Row6[2] <= multRow6[0] - multRow6[3] - multRow6[4] + multRow6[7];
    Row6[3] <= multRow6[0] -  multRow6[7];
    Row6[4] <= multRow6[0] - multRow6[1] - multRow6[2] + multRow6[3] + multRow6[4] - multRow6[5] - multRow6[6] + multRow6[7];
    Row6[5] <= multRow6[3] - multRow6[4];
    Row6[6] <= - multRow6[1] + multRow6[2] + multRow6[5] - multRow6[6];
    Row6[7] <= multRow6[2] - multRow6[5]; 
    
    
    Row7[0] <= multRow7[0] + multRow7[1] + multRow7[2] + multRow7[3] + multRow7[4] + multRow7[5] + multRow7[6] + multRow7[7];
    Row7[1] <= multRow7[1] - multRow7[6];
    Row7[2] <= multRow7[0] - multRow7[3] - multRow7[4] + multRow7[7];
    Row7[3] <= multRow7[0] -  multRow7[7];
    Row7[4] <= multRow7[0] - multRow7[1] - multRow7[2] + multRow7[3] + multRow7[4] - multRow7[5] - multRow7[6] + multRow7[7];
    Row7[5] <= multRow7[3] - multRow7[4];
    Row7[6] <= - multRow7[1] + multRow7[2] + multRow7[5] - multRow7[6];
    Row7[7] <= multRow7[2] - multRow7[5];
  
  end
assign Row_out_00 = Row0[0];
assign Row_out_01 = Row0[1];
assign Row_out_02 = Row0[2];
assign Row_out_03 = Row0[3];
assign Row_out_04 = Row0[4];
assign Row_out_05 = Row0[5];
assign Row_out_06 = Row0[6];
assign Row_out_07 = Row1[7];

assign Row_out_10 = Row1[0];
assign Row_out_11 = Row1[1];
assign Row_out_12 = Row1[2];
assign Row_out_13 = Row1[3];
assign Row_out_14 = Row1[4];
assign Row_out_15 = Row1[5];
assign Row_out_16 = Row1[6];
assign Row_out_17 = Row1[7];


assign Row_out_20 = Row2[0];
assign Row_out_21 = Row2[1];
assign Row_out_22 = Row2[2];
assign Row_out_23 = Row2[3];
assign Row_out_24 = Row2[4];
assign Row_out_25 = Row2[5];
assign Row_out_26 = Row2[6];
assign Row_out_27 = Row2[7];

assign Row_out_30 = Row3[0];
assign Row_out_31 = Row3[1];
assign Row_out_32 = Row3[2];
assign Row_out_33 = Row3[3];
assign Row_out_34 = Row3[4];
assign Row_out_35 = Row3[5];
assign Row_out_36 = Row3[6];
assign Row_out_37 = Row3[7];

 
assign Row_out_40 = Row4[0];
assign Row_out_41 = Row4[1];
assign Row_out_42 = Row4[2];
assign Row_out_43 = Row4[3];
assign Row_out_44 = Row4[4];
assign Row_out_45 = Row4[5];
assign Row_out_46 = Row4[6];
assign Row_out_47 = Row4[7]; 
 
assign Row_out_50 = Row5[0];
assign Row_out_51 = Row5[1];
assign Row_out_52 = Row5[2];
assign Row_out_53 = Row5[3];
assign Row_out_54 = Row5[4];
assign Row_out_55 = Row5[5];
assign Row_out_56 = Row5[6];
assign Row_out_57 = Row5[7];  


assign Row_out_60 = Row6[0];
assign Row_out_61 = Row6[1];
assign Row_out_62 = Row6[2];
assign Row_out_63 = Row6[3];
assign Row_out_64 = Row6[4];
assign Row_out_65 = Row6[5];
assign Row_out_66 = Row6[6];
assign Row_out_67 = Row6[7];


assign Row_out_70 = Row7[0];
assign Row_out_71 = Row7[1];
assign Row_out_72 = Row7[2];
assign Row_out_73 = Row7[3];
assign Row_out_74 = Row7[4];
assign Row_out_75 = Row7[5];
assign Row_out_76 = Row7[6];
assign Row_out_77 = Row7[7]; 
  
endmodule
