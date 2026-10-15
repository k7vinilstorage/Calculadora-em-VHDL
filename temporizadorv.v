`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Circuito temporizador 
//////////////////////////////////////////////////////////////////////////////////
module temporizadorv 		#(parameter intervalo=100000000)
						(		input 					clk,
								input 					sw,
								output	reg 			led		);
reg		[31:0]		tempo;

always@(posedge clk or posedge sw)
	if(sw) begin 
		tempo<=1'b0;
		led		<=		1'd0;
	end
	else if (tempo<=intervalo) begin
		tempo	<=	tempo+1'b1;
		led	<= 1'd0;
		end
		else
		led	<= 1'd1;

//always@(posedge clk)
//	if(tempo>intervalo) 
//		led		<=		1'd1;
endmodule