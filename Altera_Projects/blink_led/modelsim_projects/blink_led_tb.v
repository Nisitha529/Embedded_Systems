// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "10/19/2022 18:47:42"
                                                                                
// Verilog Test Bench template for design : blink_led
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1 ps/ 1 ps
module blink_led_tb();
// test vector input registers
reg key_i;
// wires                                               
wire led_o;

// assign statements (if any)                          
blink_led BL01 (
// port map - connection between master ports and signals/registers   
	.key_i(key_i),
	.led_o(led_o)
);
initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
                                                       
// --> end                            
key_i = 1'b0;
#10;
key_i = 1'b1;
#10;
key_i = 1'b0;
#10;
key_i = 1'b1;
#10;             
$display("Running testbench");                       
end                                                    
                                             
endmodule

