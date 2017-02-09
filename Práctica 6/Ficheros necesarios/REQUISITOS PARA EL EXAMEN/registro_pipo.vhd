----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:20 01/20/2014 
-- Design Name: 
-- Module Name:    registro_pipo - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

  entity registro_pipo is
  generic (n: integer);
  port (
  clk: in std_logic;
  rst_n: in std_logic;
  entrada: in std_logic_vector (0 to n - 1);
  salida: out std_logic_vector (0 to n - 1));
  end registro_pipo;

  architecture rtl of registro_pipo is
  begin 
     process (clk, rst_n)
     begin
        if (rst_n = '1' ) then 
           salida <= (others => '0');
        elsif rising_edge(clk) then
           salida <= entrada;
        end if;
     end process;
end rtl;

