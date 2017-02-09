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

entity tb_uc is
end tb_uc;

architecture beh of tb_uc is

  component uc
    port(clk    : in  std_logic;                    -- Input clock
         rst_n  : in  std_logic;                    -- General rst
         ini    : in  std_logic;                    -- Start of algorithm
         fin    : out std_logic;                    -- External output signal
         status : in  std_logic;                    -- Status signal
         ctrl   : out std_logic_vector(8 downto 0)  -- Control signal
         );
  end component;


  --Inputs
  signal clk    : std_logic;
  signal rst_n  : std_logic;
  signal ini    : std_logic;
  signal fin    : std_logic;
  signal ctrl   : std_logic_vector(8 downto 0);
  signal status : std_logic;
  signal b      : std_logic_vector(2 downto 0);

  -- Clock period definitions
  constant clk_period : time := 100 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  dut : uc port map (
    clk    => clk,
    rst_n  => rst_n,
    ini    => ini,
    fin    => fin,
    status => status,
    ctrl   => ctrl
    );

  -- Clock process definitions
  p_clk : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process p_clk;

  p_rst : process
  begin
    rst_n <= '0';
    wait for 250 ns;
    rst_n <= '1';
    wait;
  end process p_rst;

  b <= ctrl(8 downto 6) xor ctrl(7 downto 5) xor ctrl(4 downto 2) xor ctrl(2 downto 0);


  -- Stimulus process
  p_stim : process
  begin
    ini    <= '0';
    status <= '0';
    wait for 300 ns;
    wait until falling_edge(clk);
    ini    <= '1';

    assert b = "000"
      report "Vector de control erroneo"
      severity error;
    wait until rising_edge(clk);
    wait until falling_edge(clk);

    assert b = "101"
      report "Vector de control erroneo"
      severity error;
    wait until rising_edge(clk);
    wait until falling_edge(clk);

    assert b = "000"
      report "Vector de control erroneo"
      severity error;
    wait until rising_edge(clk);
    wait until falling_edge(clk);

    assert b = "111"
      report "Vector de control erroneo"
      severity error;
    wait until rising_edge(clk);
    wait until falling_edge(clk);

    assert b = "000"
      report "Vector de control erroneo"
      severity error;
    wait until rising_edge(clk);
    wait until falling_edge(clk);

    assert b = "000"
      report "Vector de control erroneo"
      severity error;
    wait until rising_edge(clk);
    wait until falling_edge(clk);

    assert b = "011"
      report "Vector de control erroneo"
      severity error;
    wait;
  end process p_stim;

end beh;