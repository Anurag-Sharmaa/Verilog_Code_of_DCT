Verilog_Code_of_DCT
This repository contains the Verilog implementation of an 8-point Discrete Cosine Transform (DCT) applied to a 256×256 grayscale image. The entire design has been developed using Xilinx Vivado Design Suite (version 2023.2).

Overview
The core objective of this project is to demonstrate the hardware implementation of an 8-point DCT on grayscale image data stored in Block RAM (BRAM) using Verilog. The implementation supports simulation and functional verification using testbenches.

Key Features
8-point DCT computation on image data

Verilog implementation targeting BRAM on FPGA

Uses a .coe file to initialize BRAM with pixel values

Compatible with Vivado-generated Single Port ROM IP

Simulation support using tb.v testbench

Preprocessing Steps
A 256×256 grayscale image (e.g., cameraman) is taken as input.

The image is converted into decimal pixel values and saved in a .txt file.

The decimal values are then converted into a .coe file, as required by Vivado’s BRAM initialization.

The cameraman.coe file used for demonstration is included in the repository.

BRAM Configuration in Vivado
Memory Type: Single Port ROM

Bit Width: 9 bits

Depth: 65536 (to store all 256×256 pixel values)

How to Use
Open the project in Vivado (2023.2).

Generate the Single Port ROM IP using the provided .coe file.

Add the Verilog files to the project.

Run the simulation using tb.v to verify functionality.
