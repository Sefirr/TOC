----------------------------------------------------------------------------------
-- Company:        Universidad Complutense de Madrid
-- Engineer:       TOC&TC
-- 
-- Create Date:    
-- Design Name:    sort
-- Module Name:    tb_sort - beh 
-- Project Name:   Practica 5
-- Target Devices: Spartan-3 
-- Tool versions:  ISE 14.1
-- Description:    Testbech del sistema algoritmico con el algoritmo de
--                 ordenacion de burbuja
-- Dependencies: 
-- Revision: 
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_sort is

end tb_sort;

architecture beh of tb_sort is
  component sort
  port( clk        : in  std_logic;
        rst_n      : in  std_logic;
        ini        : in  std_logic;
        fin        : out std_logic;
        debug_addr : in  std_logic_vector(4 downto 0);
        debug_din : in  std_logic_vector(3 downto 0);
        debug_we   : in  std_logic;
        debug_dout  : out std_logic_vector(3 downto 0));
  end component;

   signal clk, rst_n, ini, fin, debug_we : std_logic;
  signal debug_addr                   : std_logic_vector(4 downto 0);
  signal debug_din, debug_dout       : std_logic_vector(3 downto 0);
begin


  -------------------------------------------------------------------------------
  -- Component instantiation
  -------------------------------------------------------------------------------

  i_dut : sort
    port map (
      clk       => clk,
      rst_n     => rst_n,
      ini       => ini,
		debug_addr => debug_addr,
      debug_we      => debug_we,
      debug_din      => debug_din,
      debug_dout       => debug_dout,
      fin     => fin
      );

  -----------------------------------------------------------------------------
  -- Process declaration
  -----------------------------------------------------------------------------
  -- Input clock
  p_clk : process
  begin
    clk <= '0', '1' after 5 ns;
    wait for 10 ns;
  end process p_clk;

  -- External reset
  p_rst : process
  begin
    rst_n <= '0';
    wait for 250 ns;
    rst_n <= '1';
    wait;
  end process p_rst;

  p_driver : process
    variable v_i, v_j    : natural := 0;
   begin
    ini <= '0';
	 debug_we <= '0';
	 debug_addr <= "00000";
	 debug_din <= "0000";
    wait for 250 ns;
	 write_mem_loop: for v_i in 0 to 31 loop
      debug_we   <= '1';
      debug_addr <= std_logic_vector(to_unsigned(v_i, 5));
      debug_din <= std_logic_vector(to_unsigned(v_i, 4));
      wait until rising_edge(clk);
    end loop;
    debug_we <= '0';
    wait until rising_edge(clk);
    ini <= '1';
	wait until rising_edge(clk);
    wait until rising_edge(clk);
    ini <= '0';
    wait until fin = '1';
    wait until rising_edge(clk);
    read_mem_loop: for v_i in 0 to 31 loop
      debug_addr <= std_logic_vector(to_unsigned(v_i, 5));
      wait until rising_edge(clk);
    end loop; 
    wait;
  end process p_driver;

end beh;
