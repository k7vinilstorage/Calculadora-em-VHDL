----- Circuito Temporizador -----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity timer is
port (
    max_count_i   	: out STD_LOGIC_VECTOR(27 downto 0);
    clk_i   			: in  STD_LOGIC;
    clk_enable_i  	: in  STD_LOGIC;
    clr_i 			: in  STD_LOGIC;
	 tmr_overflow_o 	: out STD_LOGIC;
	 count_o   			: out STD_LOGIC_VECTOR(27 downto 0);
    );
end timer;

architecture Behavioral of timer is

  signal COUNT : STD_LOGIC_VECTOR(27 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(27 downto 0) := max_count_i; --<= (others => '0');
begin

  process(clk_i, reset_i)
  begin
    if (clr_i='1') then
      COUNT <= (others => '0');
		tmr_overflow_o <= '0';
    elsif (clk_i'event and clk_i = '1') then
      if (clk_enable_i='1') then 
			COUNT <= COUNT+1;
			if (COUNT = TERMINAL_COUNT) then
				tmr_overflow_o <= '1';
			end if;
      end if;
    end if;
  end process;  
  count_o <= COUNT;

end Behavioral;  