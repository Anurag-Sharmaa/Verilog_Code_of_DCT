`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Mandi
// Engineer: Anurag Sharma
// 
// Create Date: 10.09.2024 10:41:37
// Design Name: 
// Module Name: Dct
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module imageControl(
input                    i_clk,
input                    i_rst,
output reg [511:0]        o_pixel_data

);


wire [7:0]              i_pixel_data;
reg                    i_pixel_data_valid;

    
  reg [16:0] address = 0;
  reg [7:0] pixelCounter; // 8-bit pixel counter to count the 256 values goes in each LineBuffer
  reg [3:0] currentWrLineBuffer; // 3-bit to automatically shifts after filling 8 line BUffers with 256 vlaues to first one again
  reg [15:0] lineBuffDataValid;
  reg [15:0] lineBuffRdData = 0;
  reg currentRdLineBuffer;
  wire [63:0] lb0data;
  wire [63:0] lb1data;
  wire [63:0] lb2data;
  wire [63:0] lb3data;
  wire [63:0] lb4data;
  wire [63:0] lb5data;
  wire [63:0] lb6data;
  wire [63:0] lb7data;
   wire [63:0] lb8data;
  wire [63:0] lb9data;
  wire [63:0] lb10data;
  wire [63:0] lb11data;
  wire [63:0] lb12data;
  wire [63:0] lb13data;
  wire [63:0] lb14data;
  wire [63:0] lb15data;
  reg [6:0] rdCounter;
  reg rd_line_buffer;
  reg[11:0] totalPixelCounter;
  reg rdState;
  reg [15:0] Pixel_Counter;
  
  
  localparam IDLE = 'b0,
           RD_BUFFER = 'b1;
  
 blk_mem_gen_0 blk_inst (
    .clka(i_clk),
    .addra(address),
    .douta(i_pixel_data)
  );    
    
    
always@(posedge i_clk)
begin
    if (i_rst)
    i_pixel_data_valid <= 0;
    else if (!i_rst && address >= 1)
     i_pixel_data_valid <= 1;
    
end    
    
    always @(posedge i_clk)
begin
    if(i_rst) begin
        totalPixelCounter <= 0;
        Pixel_Counter <= 0; end
    else
    begin
        if(i_pixel_data_valid) begin
            totalPixelCounter <= totalPixelCounter + 1;
             end
        //else if(!i_pixel_data_valid & rd_line_buffer)
         //   totalPixelCounter <= totalPixelCounter - 1;
    end
end

always@(posedge i_clk)
begin
 if(i_rst) begin
        Pixel_Counter <= 0; end
        else
    Pixel_Counter = Pixel_Counter + 1;
    
end 



always @(posedge i_clk)
begin
    if(i_rst)
    begin
        rdState <= IDLE;
        rd_line_buffer <= 1'b0;

    end
    else
    begin
        case(rdState)
            IDLE:begin

                if(totalPixelCounter >= 'd2316)
                begin
                    rd_line_buffer <= 1'b1;
                    rdCounter <= 1;
                    rdState <= RD_BUFFER;
                    
                end
            end
            RD_BUFFER:begin
                if(rdCounter == 'd1)
                begin
                    rdState <= IDLE;
                    rdCounter <= 0;
                    rd_line_buffer <= 1'b0;
                    

                end
            end
        endcase
    end
end
    
 

always@(posedge i_clk)
begin
    
    if(totalPixelCounter >= 'd2316)
    totalPixelCounter <= 0;
end
    
    
 always@(posedge i_clk)
begin
   if(i_rst)
   begin
    address <= 0;
   end
   else if ( !i_rst && address < 17'd65537)
   begin
    address <= address +1;
   end
end   
 
 
always @(posedge i_clk)
begin
    if(i_rst)
        pixelCounter <= 0;
    else 
    begin
        if(i_pixel_data_valid)
            pixelCounter <= pixelCounter + 1;
    end
end


always @(posedge i_clk)
begin
    if(i_rst)
        currentWrLineBuffer <= 0;
    else
    begin
        if(pixelCounter == 255 & i_pixel_data_valid)
            currentWrLineBuffer <= currentWrLineBuffer+1;
    end
end 

always @(*)
begin
    
    lineBuffDataValid = 'd0;
   
    lineBuffDataValid[currentWrLineBuffer] = i_pixel_data_valid;
end

always@(posedge i_clk)
begin
    if(Pixel_Counter >= 2049)
    lineBuffDataValid <= 0;
end
//always @(posedge i_clk)
//begin
//    if(i_rst && rd_line_buffer == 0 )
//        rdCounter <= 0;
//    else 
//    begin
//        if(rd_line_buffer)
//            rdCounter <= rdCounter + 1;
//    end
//end

//always @(posedge i_clk)
//begin
//    if(i_rst)
//    begin
//        currentRdLineBuffer <= 0;
//    end
//    else
//    begin
//        if(currentRdLineBuffer == 0 && pixelCounter == 'd31 )
//            currentRdLineBuffer <= 1;
//    end
//end

always @(posedge i_clk)
begin
    if(i_rst)
    begin
        currentRdLineBuffer <= 0;
    end
    else
    begin
        if(Pixel_Counter == 'd65536)
            currentRdLineBuffer <= currentRdLineBuffer + 1;
//       currentRdLineBuffer <= 0;
    end
end


always @(*)
begin
    case(currentRdLineBuffer)
        0:begin
            o_pixel_data = {lb7data,lb6data,lb5data,lb4data,lb3data,lb2data,lb1data,lb0data};
        end
        1:begin
            o_pixel_data = {lb15data,lb14data,lb13data,lb12data,lb11data,lb10data,lb9data,lb8data};
        end
       
    endcase
end


always @(*)
begin
    case(currentRdLineBuffer)
        0:begin
            lineBuffRdData[0] = rd_line_buffer;
            lineBuffRdData[1] = rd_line_buffer;
            lineBuffRdData[2] = rd_line_buffer;
            lineBuffRdData[3] = rd_line_buffer;
            lineBuffRdData[4] = rd_line_buffer;
            lineBuffRdData[5] = rd_line_buffer;
            lineBuffRdData[6] = rd_line_buffer;
            lineBuffRdData[7] = rd_line_buffer;
            
            
        end
       1:begin
            lineBuffRdData[8] = rd_line_buffer;
            lineBuffRdData[9] = rd_line_buffer;
            lineBuffRdData[10] = rd_line_buffer;
            lineBuffRdData[11] = rd_line_buffer;
            lineBuffRdData[12] = rd_line_buffer;
            lineBuffRdData[13] = rd_line_buffer;
            lineBuffRdData[14] = rd_line_buffer;
            lineBuffRdData[15] = rd_line_buffer;
            
        end

endcase
end
    
////////////checking remove later for trnasformer

wire [7:0] out_trns1, out_trns2, out_trns3, out_trns4;
assign out_trns1 = {lb0data[0*8+:8]};
assign out_trns2 = {lb0data[1*8+:8]};
assign out_trns3 = {lb0data[2*8+:8]};
assign out_trns4 = {lb0data[3*8+:8]};
///////////////////////////

lineBuffer lB0(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_data(i_pixel_data),
    .i_data_valid(lineBuffDataValid[0]),
    .o_data(lb0data),
    .i_rd_data(lineBuffRdData[0])
 ); 
 
 lineBuffer lB1(
     .i_clk(i_clk),
     .i_rst(i_rst),
     .i_data(i_pixel_data),
     .i_data_valid(lineBuffDataValid[1]),
     .o_data(lb1data),
     .i_rd_data(lineBuffRdData[1])
  ); 
  
  lineBuffer lB2(
      .i_clk(i_clk),
      .i_rst(i_rst),
      .i_data(i_pixel_data),
      .i_data_valid(lineBuffDataValid[2]),
      .o_data(lb2data),
      .i_rd_data(lineBuffRdData[2])
   ); 
   
   lineBuffer lB3(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[3]),
       .o_data(lb3data),
       .i_rd_data(lineBuffRdData[3])
    );  
    
    lineBuffer lB4(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[4]),
       .o_data(lb4data),
       .i_rd_data(lineBuffRdData[4])
    );  
    
    lineBuffer lB5(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[5]),
       .o_data(lb5data),
       .i_rd_data(lineBuffRdData[5])
    );    
     lineBuffer lB6(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[6]),
       .o_data(lb6data),
       .i_rd_data(lineBuffRdData[6])
    );    
     lineBuffer lB7(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[7]),
       .o_data(lb7data),
       .i_rd_data(lineBuffRdData[7])
    );        
  

lineBuffer lB8(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_data(i_pixel_data),
    .i_data_valid(lineBuffDataValid[8]),
    .o_data(lb8data),
    .i_rd_data(lineBuffRdData[8])
 ); 
 
 lineBuffer lB9(
     .i_clk(i_clk),
     .i_rst(i_rst),
     .i_data(i_pixel_data),
     .i_data_valid(lineBuffDataValid[9]),
     .o_data(lb9data),
     .i_rd_data(lineBuffRdData[9])
  ); 
  
  lineBuffer lB10(
      .i_clk(i_clk),
      .i_rst(i_rst),
      .i_data(i_pixel_data),
      .i_data_valid(lineBuffDataValid[10]),
      .o_data(lb10data),
      .i_rd_data(lineBuffRdData[10])
   ); 
   
   lineBuffer lB11(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[11]),
       .o_data(lb11data),
       .i_rd_data(lineBuffRdData[11])
    );  
    
    lineBuffer lB12(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[12]),
       .o_data(lb12data),
       .i_rd_data(lineBuffRdData[12])
    );  
    
    lineBuffer lB13(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[13]),
       .o_data(lb13data),
       .i_rd_data(lineBuffRdData[13])
    );    
     lineBuffer lB14(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[14]),
       .o_data(lb14data),
       .i_rd_data(lineBuffRdData[14])
    );    
     lineBuffer lB15(
       .i_clk(i_clk),
       .i_rst(i_rst),
       .i_data(i_pixel_data),
       .i_data_valid(lineBuffDataValid[15]),
       .o_data(lb15data),
       .i_rd_data(lineBuffRdData[15])
    );          
    
endmodule





