----------------------------------------------------------------------------------
-- Company:        Universidad Complutense de Madrid
-- Engineer:       TOC & TC
-- 
-- Create Date:    
-- Design Name:    multiplicador
-- Module Name:    tb_multiplier - beh 
-- Project Name:   Practica 3
-- Target Devices: Spartan-3 
-- Tool versions:  ISE 14.1
-- Description:    Test de simulacion para el multiplicador en array nxn
-- Dependencies: 
-- Revision: 
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_multiplier is
  generic (n : integer := 5);
end tb_multiplier;

architecture beh of tb_multiplier is

  -- component declaration for the device under test (dut)

  component multiplicador
    generic (n : integer := 5);
    port (op1 : in  std_logic_vector(n-1 downto 0);
          op2 : in  std_logic_vector(n-1 downto 0);
          result : out std_logic_vector(2*n-1 downto 0));
  end component;


  --inputs
  signal din1, din2 : std_logic_vector(n-1 downto 0) := (others => '0');

  --outputs
  signal producto : std_logic_vector(2*n-1 downto 0);

begin

  -- instantiate the unit under test (uut)
  i_dut : multiplicador
    generic map (n => n)
    port map (
      op1 => din1,
      op2 => din2,
      result => producto
      );

  -- stimulus process
  p_stim : process
    variable res  : std_logic_vector(2*n-1 downto 0) := (others => '0');
    variable i, j : integer                          := 0;
  begin
    -- hold reset state for 100 ns.

    all_op1 : for i in 0 to 2**n-1 loop
      all_op2 : for j in 0 to 2**n-1 loop
        din1 <= std_logic_vector(to_unsigned(i, n));
        din2 <= std_logic_vector(to_unsigned(j, n));
        res  := std_logic_vector(to_unsigned(i * j, 2*n));
        wait for 100 ns;
        assert res = producto
          report "No coincide valor esperado con el valor obtenido" severity error;
        wait for 1 ns;
      end loop all_op2;
    end loop all_op1;
    wait;
  end process p_stim;

end beh;
