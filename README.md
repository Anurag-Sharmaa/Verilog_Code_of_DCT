# Verilog_Code_of_DCT
I have made the verilog code to perform the 8-point DCT on a 256*256 grayscale image,
Key steps before using the design codes, 
I have taken a 256*256 grayscale image and converted that into pixel values in decimal values in a .txt file,
I store those pixels in the BRAM of vivado (Single port ROM) and then using those values my code gives the output result using all the design files,
All teh code is written in verilog using vivado design suite (version 2023.2) 
i chose the Block Ram IP in vivado with memory type single port ROM,
bitwidth 9 and Deppth of 65536.
A test bench to run the design to get the simulations are there in tb.v
