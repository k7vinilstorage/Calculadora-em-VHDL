`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Decodificador BCH - Display de 7 segmentos com multiplexador para 4 displays
//////////////////////////////////////////////////////////////////////////////////
module v_bcd_7seg	(			input				[7:2]		sw,
									output			[0:6]		seg,
									output			[3:0]		an
						);
assign seg				= 	(sw[7:4]==4'b0000) ? 7'b0000001:	       			//Display 0
								(sw[7:4]==4'b0001) ? 7'b1001111:	       			//Display 1
								(sw[7:4]==4'b0010) ? 7'b0010010:	       			//Display 2
								(sw[7:4]==4'b0011) ? 7'b0000110:	       			//Display 3
								(sw[7:4]==4'b0100) ? 7'b1001100:	       			//Display 4
								(sw[7:4]==4'b0101) ? 7'b0100100:	       			//Display 5
								(sw[7:4]==4'b0110) ? 7'b0100000:	       			//Display 6
								(sw[7:4]==4'b0111) ? 7'b0001111:	       			//Display 7
								(sw[7:4]==4'b1000) ? 7'b0000000:	       			//Display 8
								(sw[7:4]==4'b1001) ? 7'b0000100:	       			//Display 9
								(sw[7:4]==4'b1010) ? 7'b0001000:	       			//Display A
								(sw[7:4]==4'b1011) ? 7'b1100000:	       			//Display b
								(sw[7:4]==4'b1100) ? 7'b0110001:	       			//Display C
								(sw[7:4]==4'b1101) ? 7'b1000010:	       			//Display d
								(sw[7:4]==4'b1110) ? 7'b0110000:	       			//Display E
								(sw[7:4]==4'b1111) ? 7'b1111111:7'b1001001;			//Display apagado
assign an				= 	(sw[3:2]==2'b00) ? 4'b1110:
								(sw[3:2]==2'b01) ? 4'b1101:
								(sw[3:2]==2'b10) ? 4'b1011:
								(sw[3:2]==2'b11) ? 4'b0111:4'b0000;
endmodule
