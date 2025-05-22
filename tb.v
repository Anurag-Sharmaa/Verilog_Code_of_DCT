module conv_tb();
reg i_clk = 1;
reg        i_rst;
//reg [511:0] i_pixel_data;


 conv utu(
i_clk,
i_rst,
i_pixel_data
    );

always #5 i_clk = ~i_clk;

initial begin
    i_rst = 1;
    #10
    i_rst = 0;


#655720
$finish;
end    
    


endmodule
