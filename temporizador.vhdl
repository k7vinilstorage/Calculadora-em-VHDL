----- Circuito Temporizador -----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity temporizador is
generic (TERMINAL_COUNT : STD_LOGIC_VECTOR(27 downto 0):="0101111101011110000100000000");
port (
    seg7  : out STD_LOGIC;
    clk   : in  STD_LOGIC;
    sw3  : in  STD_LOGIC;
    sw4 : in  STD_LOGIC
    );
end temporizador;

architecture Behavioral of temporizador is

  signal COUNT : STD_LOGIC_VECTOR(27 downto 0) := (others => '0');
begin

  process(clk, sw4)
  begin
    if (sw4='1') then
      COUNT <= (others => '0');
		seg7 <= '0';
    elsif (clk'event and clk = '1') then
      if (sw3='1') then 
			COUNT <= COUNT+1;
			if (COUNT = TERMINAL_COUNT) then
				seg7 <= '1';
			end if;
      end if;
    end if;
  end process;

end Behavioral;  