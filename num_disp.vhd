
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
---------------------------------------------------
entity num_disp is
port(
  num      	: IN STD_LOGIC_VECTOR(13 DOWNTO 0);
  seg			: OUT STD_LOGIC_VECTOR(0 to 6);
  an			: out STD_LOGIC_VECTOR(3 downto 0);
  clk			: in std_logic);
end num_disp;
 
architecture teste_4 of num_disp is
component vardisp
port(
  uni,dez,cent,mil   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  seg						: OUT STD_LOGIC_VECTOR(0 to 6);
  an						: out STD_LOGIC_VECTOR(3 downto 0);
  clk						: in std_logic);
end component;
signal		uni, dez, cent, mil	:	std_logic_vector(3 downto 0);
signal		uni1, dez1, cent1, mil1, rmil1, rcent1	:	natural;

begin
mil1		<=		to_integer(unsigned(num))/1000;
rmil1		<=		to_integer(unsigned(num)) rem 1000;
cent1		<=		rmil1/100;
rcent1	<=		rmil1 rem 100;
dez1		<=		rcent1/10;
uni1		<=		rcent1 rem 10;

u0		:		vardisp port map(uni,dez,cent,mil,seg,an,clk);
	uni			<=	std_logic_vector(to_unsigned(uni1,4));
	dez			<=	std_logic_vector(to_unsigned(dez1,4));
	cent			<=	std_logic_vector(to_unsigned(cent1,4));
	mil			<=	std_logic_vector(to_unsigned(mil1,4));
end teste_4;