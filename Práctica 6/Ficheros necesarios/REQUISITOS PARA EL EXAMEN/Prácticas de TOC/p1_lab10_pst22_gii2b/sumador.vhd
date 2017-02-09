----------------------------------------------------------------------------------
-- company: Universidad Complutense de Madrid (UCM)
-- engineer: Javier Villarreal Rodriguez
-- 
-- design name:   sumador 
-- module name:   sumador - circuito
-- project name:  p1_lab10_pst22_gii2b
-- target devices: 
-- description: Creacion de un sumador completo de 4 bits
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sumador is
   Port( A : in STD_LOGIC_VECTOR (3 downto 0);     -- input A
	      B : in STD_LOGIC_VECTOR (3 downto 0);     -- input B
			C : out STD_LOGIC_VECTOR (3 downto 0));   -- output C
end sumador;

architecture circuito of sumador is
-- No hace falta definir señales intermedias
begin

C <= A + B;

end circuito;

