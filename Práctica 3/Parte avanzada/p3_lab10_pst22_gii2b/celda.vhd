-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY celda IS
PORT ( 
clk : IN std_logic;
rst  : IN std_logic;
M	 : IN std_logic;
Q	 : IN std_logic;
PPIN	 : IN std_logic;
CIN	 : IN std_logic;
COUT : OUT std_logic;
PPOUT : OUT std_logic );
END celda;

ARCHITECTURE Comportamiento OF celda IS

-- Definimos una señal intermedia PROD:
SIGNAL prod : std_logic;

BEGIN
-- Describimos el circuito en modo "puertas lógicas"
prod <= M AND Q;
--PPOUT <= (prod XOR PPIN) XOR CIN;
--COUT <= (prod AND PPIN) OR (prod AND CIN) OR (PPIN AND CIN);

p_ff: process(clk, rst)
begin

if rst = '0' then
   if clk'event and clk ='1' then
   PPOUT <= (prod XOR PPIN) XOR CIN;
   COUT <= (prod AND PPIN) OR (prod AND CIN) OR (PPIN AND CIN);
	end if;
elsif rst = '1' and rising_edge(clk) then
   PPOUT <= '0';
	COUT <= '0';
end if;
end process;
end Comportamiento;