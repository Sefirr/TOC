----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:11:23 10/15/2013 
-- Design Name: 
-- Module Name:    tb_sumador - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_sumador is
end tb_sumador;

architecture Behavioral of tb_sumador is
-- Declaración del componente que vamos a simular
component sumador
   port( A : IN std_logic_vector(3 downto 0);
	      B : IN std_logic_vector(3 downto 0);
			C : OUT std_logic_vector(3 downto 0)
		);
end component;

--Entradas
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
--Salidas
signal C : std_logic_vector(3 downto 0);

begin
--Instanciacion de la unidad a simular
dut: sumador port map( 
       A => A,
		 B => B,
		 C => C
		);
		
-- Proceso de estimulos
p_stim_proc: process
begin
   A<="0000";
   B<="0000";
   wait for 100 ns;
   A<="0101";
   B<="0100";
   wait for 100 ns;
   A<="0000";
   B<="0111";
   wait for 100 ns;
   A<="0011";
   B<="1000";
   wait for 100 ns;
   A<="1011";
   B<="1111";
   wait for 100 ns;
   A<="1001";
   B<="0110";
   wait;
end process; 

end Behavioral;

