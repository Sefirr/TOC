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
PORT ( M	 : IN std_logic;
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
PPOUT <= (prod XOR PPIN) XOR CIN;
COUT <= (prod AND PPIN) OR (prod AND CIN) OR (PPIN AND CIN);
end Comportamiento;