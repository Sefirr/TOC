----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:23:42 12/09/2013 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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
use ieee.numeric_std.all;


entity counter is
  generic (g_width : natural := 8);
  port (clk     : in  std_logic;
        rst_n   : in  std_logic;
        cntr_en : in  std_logic;
        ld      : in  std_logic;
        up      : in  std_logic;
        din     : in  std_logic_vector (g_width-1 downto 0);
        cntr    : out std_logic_vector (g_width-1 downto 0));
end counter;

architecture rtl of counter is

  signal cntr_int : unsigned(g_width-1 downto 0);

begin

  cntr <= std_logic_vector(cntr_int);

  p_cntr : process(clk, rst_n)
  begin
    if rst_n = '0' then
      cntr_int <= (others => '0');
    elsif rising_edge(clk) then
      if ld = '1' then
        cntr_int <= unsigned(din);
      elsif cntr_en = '1' then
        if up = '1' then
          cntr_int <= cntr_int + 1;
        else
          cntr_int <= cntr_int - 1;
        end if;
      end if;
    end if;
  end process p_cntr;

end rtl;

