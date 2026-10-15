
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_7seg IS
  PORT(
    sw          : IN   STD_LOGIC_VECTOR(6 DOWNTO 1);   --number to display in BCD
    seg : OUT  STD_LOGIC_VECTOR(0 TO 6);  --outputs to seven segment display
	 an : OUT  STD_LOGIC_VECTOR(3 DOWNTO 0));
END bcd_7seg;

ARCHITECTURE logic OF bcd_7seg IS
BEGIN

  --map bcd input to desired output segments
  WITH sw(4 downto 1) SELECT
    seg 			  <= "0000001" WHEN "0000",  --0
                    "1001111" WHEN "0001",  --1
                    "0010010" WHEN "0010",  --2
                    "0000110" WHEN "0011",  --3
                    "1001100" WHEN "0100",  --4
                    "0100100" WHEN "0101",  --5
                    "0100000" WHEN "0110",  --6
                    "0001111" WHEN "0111",  --7
                    "0000000" WHEN "1000",  --8
                    "0000100" WHEN "1001",  --9
                    "0001000" WHEN "1010",  --a
                    "1100000" WHEN "1011",  --b
                    "0110001" WHEN "1100",  --c
                    "1000010" WHEN "1101",  --d
                    "0110000" WHEN "1110",  --e
                    "0111000" WHEN "1111",  --f
                    "1111110" WHEN OTHERS;  --blank when not a digit
  
  WITH sw(6 downto 5) SELECT
	an 		<= 	"0111" WHEN "00",
						"1011" WHEN "01",
						"1101" WHEN "10",
						"1110" WHEN "11";
  
END logic;
