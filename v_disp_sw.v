`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Circuito para a exibição de um número de quatro casas decimais
//////////////////////////////////////////////////////////////////////////////////
module v_disp_sw 	(		input 								clk,
								input						[13:0]	sw,
								output 					[0:6]		seg,
								output 		 			[0:3]		an			);
wire						zeraw, estourow;
reg						zera;
wire		[3:0]			mil,cent,dez,unid;
reg		[1:0]			mostra;
wire		[5:0]			anw;
temporizadorv 		#(100000)
						u0	(	.clk(clk),
								.sw(zeraw),
								.led(estourow)		);
v_bcd_7seg			u1	(	.sw(anw),
								.seg(seg),
								.an(an)				);
always@(posedge clk) begin
	if (estourow)
		zera			<= 1'b1;
	else
		zera			<= 1'b0;
end
always@(posedge zera)
			mostra		<=	mostra + 1'b1;
assign mil			=		sw/1000;
assign cent			=		(sw%1000)/100;
assign dez			=		((sw%1000)%100)/10;
assign unid			=		((sw%1000)%100)%10;
assign zeraw		=		zera;
assign anw			= 	(mostra==2'b00) ? {mil,2'b00}:	       				//Display 0
								(mostra==2'b01) ? {cent,2'b01}:   						//Display 1
								(mostra==2'b10) ? {dez,2'b10}:  						//Display 2
								(mostra==2'b11) ? {unid,2'b11}:6'b000000;				//Display 3
endmodule
