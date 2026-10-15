library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
---------------------------------------------------
entity calculadora is
port(
  sw      	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  btn      	: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
  seg			: OUT STD_LOGIC_VECTOR(0 to 6);
  an			: out STD_LOGIC_VECTOR(3 downto 0);
  clk			: in std_logic);
end calculadora;
 
architecture teste_4 of calculadora is
component num_disp
port(
  num      				: IN STD_LOGIC_VECTOR(13 DOWNTO 0);
  seg						: OUT STD_LOGIC_VECTOR(0 to 6);
  an						: out STD_LOGIC_VECTOR(3 downto 0);
  clk						: in std_logic);
end component;
signal		A,B,num,x,y,t,w,z	:	natural;

begin
	A   <= to_integer(unsigned(sw(6 downto 0))) when (sw(7) = '0');
	B   <= to_integer(unsigned(sw(6 downto 0))) when (sw(7) = '1');
	x   <= (a-b) when (a>=b) else (b-a);
	y   <= (a/b) when (a>=b) else 14000;
	t   <= (b/a) when (a<=b) else 14000;
	w   <= (a+10000) when sw(7)='0' else (b+11000);
	z   <= (a+10000) when sw(7)='1' else (b+11000);

  WITH btn SELECT
    num		  <= w 	WHEN "00000",
                 z 	WHEN "00001",
                 A+B WHEN "00010",
                 x   WHEN "01000",
					  A*B WHEN "00100",
					  y   WHEN "10000",
					  t   WHEN "10100",
					  a rem b when "10010",
					  b rem a when "11000";

u0		:		num_disp port map(std_logic_vector(to_unsigned(num,14)),seg,an,clk);
end teste_4;