----------------------------------------------------------------------------------
-- Company:        Universidad Complutense de Madrid
-- Engineer:       TOC&TC
-- 
-- Create Date:    
-- Design Name:    tb_triangular
-- Module Name:    tb_triangular - beh
-- Project Name:   Practica 6
-- Target Devices: Spartan-3 
-- Tool versions:  ISE 14.1
-- Description:    Testbench del sistema algoritmico triangular
-- Dependencies: 
-- Revision: 
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mult is

end tb_mult;

architecture beh of tb_mult is
---------------------------------------------------------------------------------
-- Component declaration

  component mult
    port(clk        : in  std_logic;    -- Input clock
         rst_n      : in  std_logic;    -- General reset
         ini        : in  std_logic;    -- Start of algorithm
         fin        : out std_logic;
         dirE       : in  std_logic_vector(4 downto 0);
         dirL       : in  std_logic_vector(4 downto 0);
         result     : out std_logic_vector(7 downto 0);
         debug_addr : in  std_logic_vector(4 downto 0);
         debug_din  : in  std_logic_vector(7 downto 0);
         debug_dout : out std_logic_vector(7 downto 0);
         debug_we   : in  std_logic_vector(0  downto 0));
  end component;

  signal clk, rst_n, ini, fin   : std_logic;
  signal dirE, dirL, debug_addr : std_logic_vector(4 downto 0);
  signal debug_din, debug_dout  : std_logic_vector(7 downto 0);
  signal result                 : std_logic_vector(7 downto 0);
  signal debug_we               : std_logic_vector(0 downto 0);
begin


  -------------------------------------------------------------------------------
  -- Component instantiation
  -------------------------------------------------------------------------------

  i_dut : mult
    port map (
      clk        => clk,
      rst_n      => rst_n,
      ini        => ini,
      fin        => fin,
      dirE       => dirE,
      dirL       => dirL,
      result     => result,
      debug_addr => debug_addr,
      debug_din  => debug_din,
      debug_dout => debug_dout,
      debug_we   => debug_we
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
    variable v_calculo   : natural := 0;
    variable v_correctas : natural := 0;

  begin
    ini        <= '0';
    dirL       <= (others => '0');
    dirE       <= (others => '0');
    debug_we   <= "0";
    debug_addr <= (others => '0');
    debug_din  <= (others => '0');
    wait for 300 ns;
    write_loop : for v_i in 0 to 31 loop
      debug_addr <= std_logic_vector(to_unsigned(v_i, 5));
      debug_din  <= std_logic_vector(to_unsigned(v_i, 8));
      debug_we   <= "1";
      wait until rising_edge(clk);
    end loop write_loop;
    debug_we   <= "0";
    debug_addr <= (others => '0');
    debug_din  <= (others => '0');
    wait until rising_edge(clk);

    comp_loop : for v_i in 0 to 7 loop
      dirL <= std_logic_vector(to_unsigned(v_i*2, 5));
      dirE <= std_logic_vector(to_unsigned(v_i+16, 5));
      ini  <= '1';
      wait until rising_edge(clk);
      ini  <= '0';
      wait until fin = '1';
      wait until rising_edge(clk);
    end loop comp_loop;

    wait until rising_edge(clk);
    
    read_loop : for v_i in 0 to 7 loop
      debug_addr <= std_logic_vector(to_unsigned(v_i+16, 5));
      wait until rising_edge(clk);
      wait until falling_edge(clk);
      assert std_logic_vector(to_unsigned(2*v_i*(2*v_i+1), 8)) = debug_dout
        report "Error en la lectura de la posicion : " & integer'image(v_i+16) & " Valor esperado : " & integer'image(2*v_i*(2*v_i+1)) & " Obtenido: " & integer'image(to_integer(unsigned(debug_dout)))
        severity error;
    end loop read_loop;
    wait;
  end process p_driver;

end beh;
