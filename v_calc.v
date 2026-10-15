`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:10 10/08/2026 
// Design Name: 
// Module Name:    v_calc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module v_calc(		input 								clk,
						input						[7:0]	sw,
						input 					[4:0]		btn,
						output 					[0:6]		seg,
						output 		 			[0:3]		an			);

	wire 	[6:0] a, b;
			
	wire [13:0] result;
	
	wire [14:0] w, z, x, y, t;

	assign a = (sw[7] == 1'b0) ? a:a;
	assign b = (sw[7] == 1'b1) ? a:b;
	
	assign x   =  (a>=b)? (a-b):(15000+(b-a));
	assign y   =  (a>=b)? (a/b) : 14000;
	assign t   =  (a>=b) ? (b/a) : 14000;
	assign w   =  (sw[7]==1'b0) ? (a+10000) :(b+11000);
	assign z   =  (sw[7]==1'b1) ? (a+10000): (b+11000);
	
	assign result		= 	(btn==5'b00001) ? z:
								(btn==5'b00010) ? a+b:
								(btn==5'b01000) ? x:
								(btn==5'b00100) ? a*b:
								(btn==5'b10000) ? y:
								(btn==5'b10100) ? t:
								(btn==5'b10010) ? a%b:
								(btn==5'b11000) ? a%b:w;
								
		v_disp_sw disp (
		.clk(clk),
		.sw(result),
		.seg(seg),
		.an(an)
	);
	


endmodule
