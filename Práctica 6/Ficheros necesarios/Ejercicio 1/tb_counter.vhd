--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:48:29 01/13/2014
-- Design Name:   
-- Module Name:   
-- Project Name:  
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity tb_counter is
end tb_counter;

architecture beh of tb_counter is

  component counter
    generic (g_width : natural := 8);
    port(
      clk     : in  std_logic;
      rst_n   : in  std_logic;
      cntr_en : in  std_logic;
      ld      : in  std_logic;
      up      : in  std_logic;
      din     : in  std_logic_vector (g_width-1 downto 0);
      cntr    : out std_logic_vector (g_width-1 downto 0)
      );
  end component;


  --Inputs
  signal clk     : std_logic;
  signal rst_n   : std_logic;
  signal cntr_en : std_logic;
  signal ld      : std_logic;
  signal up      : std_logic;
  signal din     : std_logic_vector(7 downto 0);


  --Outputs
  signal cntr : std_logic_vector(7 downto 0);

  -- Clock period definitions
  constant clk_period : time := 100 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  dut : counter port map (
    clk     => clk,
    rst_n   => rst_n,
    cntr_en => cntr_en,
    ld      => ld,
    up      => up,
    din     => din,
    cntr    => cntr
    );

  -- Clock process definitions
  p_clk : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process p_clk;


  -- Stimulus process
  p_stim : process
  begin
    din     <= X"00";
    ld      <= '0';
    cntr_en <= '0';
    up      <= '0';
    -- hold reset state for 100 ns.
    rst_n   <= '0';
    wait for 100 ns;
    rst_n   <= '1';
    wait for 100 ns;
    din     <= X"56";
    ld      <= '1';
    wait for 100 ns;
    assert cntr = X"56"
      report "Error en el counter"
      severity error;
    ld      <= '0';
    cntr_en <= '1';
    up      <= '1';
    wait for 100 ns;
    assert cntr = X"57"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"58"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"59"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"5a"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"5b"
      report "Error en el counter"
      severity error;
    up <= '0';
    wait for 100 ns;
    assert cntr = X"5a"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"59"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"58"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"57"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"56"
      report "Error en el counter"
      severity error;
    wait for 100 ns;
    assert cntr = X"55"
      report "Error en el counter"
      severity error;
    wait;
  end process p_stim;

end beh;
