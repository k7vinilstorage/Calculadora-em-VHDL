LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY vardisp IS
  PORT(
    uni, dez, cent, mil : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
    seg                 : OUT STD_LOGIC_VECTOR(0 TO 6);
    an                  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk                 : IN  STD_LOGIC
  );
END vardisp;

ARCHITECTURE logic OF vardisp IS

  COMPONENT temporizador 
    GENERIC (TERMINAL_COUNT : STD_LOGIC_VECTOR(27 downto 0) := "0101111101011110000100000000");
    PORT(
      seg7 : OUT STD_LOGIC;
      clk  : IN  STD_LOGIC;
      sw3  : IN  STD_LOGIC;
      sw4  : IN  STD_LOGIC
    );
  END COMPONENT;

  COMPONENT bcd_7seg 
    PORT(
      sw  : IN  STD_LOGIC_VECTOR(6 DOWNTO 1);
      seg : OUT STD_LOGIC_VECTOR(0 TO 6);
      an  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL digt : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL disp : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
  SIGNAL tc, clr : STD_LOGIC;

BEGIN

  PROCESS(clk)
  BEGIN
    IF (rising_edge(clk)) THEN
      IF (tc = '1') THEN
        disp <= disp + 1;
        clr  <= '1';
      ELSE
        clr  <= '0';
      END IF;
    END IF;
  END PROCESS;

  WITH disp SELECT
    digt <= uni  WHEN "00",
            dez  WHEN "01",
            cent WHEN "10",
            mil  WHEN "11",
            "0000" WHEN OTHERS;

  u0 : bcd_7seg PORT MAP (
    sw  => (disp & digt), 
    seg => seg, 
    an  => an
  );

  u1 : temporizador 
    GENERIC MAP("0000000000011110000100000000") 
    PORT MAP (
      seg7 => tc, 
      clk  => clk, 
      sw3  => '1', 
      sw4  => clr
    );

END logic;



--
--
--
--LIBRARY ieee;
--USE ieee.std_logic_1164.all;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
--ENTITY vardisp IS
--  PORT(
--    clk          : IN   STD_LOGIC;   --number to display in BCD
--    seg : OUT  STD_LOGIC_VECTOR(0 TO 6);  --outputs to seven segment display
--	 an : OUT  STD_LOGIC_VECTOR(3 DOWNTO 0));
--END vardisp;
--
--
--ARCHITECTURE logic OF vardisp IS
--component temporizador 
--generic (TERMINAL_COUNT : STD_LOGIC_VECTOR(27 downto 0):="0101111101011110000100000000");
--PORT(
--    seg7  : out STD_LOGIC;
--    clk   : in  STD_LOGIC;
--    sw3  : in  STD_LOGIC;
--    sw4 : in  STD_LOGIC
--    );
--end component;
--
--component bcd_7seg 
--PORT(
--    sw          : IN   STD_LOGIC_VECTOR(6 DOWNTO 1);   --number to display in BCD
--    seg : OUT  STD_LOGIC_VECTOR(0 TO 6);  --outputs to seven segment display
--	 an : OUT  STD_LOGIC_VECTOR(3 DOWNTO 0));
--end component;
--
--signal digt : STD_LOGIC_VECTOR(3 Downto 0);
--signal disp : STD_LOGIC_VECTOR(1 downto 0);
--signal tc, clr : STD_LOGIC;
--BEGIN
--
--  process(clk)
--  begin
--		if (clk'event and clk = '1') then
--			if (tc='1') then
--				disp <= disp + 1;
--				clr <= '1';
--			else
--				clr <= '0';
--			end if;
--		end if;
--
--  end process;
--  
--  WITH disp SELECT
--	digt 		<= 	"0001" WHEN "00",
--						"0010" WHEN "01",
--						"0000" WHEN "10",
--						"0101" WHEN "11";
--						
--						
--	u0 : bcd_7seg port map ((disp&digt),seg, an);
--	u1 : temporizador generic map("0000000000011110000100000000") port map (tc, clk, '1', clr);
--  
--END logic;
