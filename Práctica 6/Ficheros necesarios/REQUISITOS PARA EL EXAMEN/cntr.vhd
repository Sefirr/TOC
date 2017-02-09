----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:27:08 01/20/2014 
-- Design Name: 
-- Module Name:    cntr - Behavioral 
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
----------------------------------------------------------------------------------
-- Company:        UCM
-- Engineer:       Oscar Garnica
-- 
-- Create Date:    11:07:57 10/22/2012 
-- Design Name:    counter
-- Module Name:    rtl 
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
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;

  entity cntr is
  port (
    cout :out std_logic_vector (7 downto 0);
    enable :in std_logic;
    clk    :in std_logic;
    rst_n  :in std_logic);
  end cntr;

  architecture rtl of cntr is
     signal cuenta : unsigned(7 downto 0);
  begin
     process (clk, rst_n) 
     begin
        if (rst_n = '0') then
           cuenta <= (others => '0');
        elsif (rising_edge(clk)) then
           if (enable = '1') then
              cuenta <= cuenta + 1;
           end if;
		  end if;
     end process;

     cout <= std_logic_vector(cuenta);

  end rtl;
