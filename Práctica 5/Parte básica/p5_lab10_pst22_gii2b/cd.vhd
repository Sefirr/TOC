----------------------------------------------------------------------------------
-- Company:        Universidad Complutense de Madrid
-- Engineer:       TOC&TC
-- 
-- Create Date:    
-- Design Name:    sort
-- Module Name:    cd - rtl 
-- Project Name:   Practica 5
-- Target Devices: Spartan-3 
-- Tool versions:  ISE 14.1
-- Description:    Camino de datos ASM ordenamiento burbuja
-- Dependencies: 
-- Revision: 
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity cd is
  port (
    clk        : in  std_logic;         -- clock
    rst_n      : in  std_logic;         -- reset
    debug_addr : in  std_logic_vector(4 downto 0);  -- Input address for debugging
    debug_we   : in  std_logic;         -- Input write enable for debugging
    debug_din  : in  std_logic_vector(3 downto 0);  -- Input data for debugging
    debug_dout : out std_logic_vector(3 downto 0);  -- Debug output
    ctrl       : in  std_logic_vector(6 downto 0);  -- Control
    status     : out std_logic_vector(2 downto 0));  -- Status
end entity cd;

architecture rtl of cd is
  component sort_mem
    port (
      clka  : in  std_logic;
      wea   : in  std_logic_vector(0 downto 0);
      addra : in  std_logic_vector(4 downto 0);
      dina  : in  std_logic_vector(3 downto 0);
      douta : out std_logic_vector(3 downto 0);
      clkb  : in  std_logic;
      web   : in  std_logic_vector(0 downto 0);
      addrb : in  std_logic_vector(4 downto 0);
      dinb  : in  std_logic_vector(3 downto 0);
      doutb : out std_logic_vector(3 downto 0)
      );
  end component;
  
  -----------------------------------------------------------------------------
  -- Tipo que define una memoria RAM de 32 palabras de 4 bits
  -----------------------------------------------------------------------------
  type t_RAM is array(31 downto 0) of std_logic_vector(3 downto 0);
  
  -----------------------------------------------------------------------------
  -- Memoria RAM de 32 palabras de 4 bits, tal como describe la memoría 
  -----------------------------------------------------------------------------
  signal ram_stat : t_RAM;

  -----------------------------------------------------------------------------
  -- Definicion de senales datos
  -----------------------------------------------------------------------------
  signal cntri      : std_logic_vector(4 downto 0);
  signal cntrj      : std_logic_vector(4 downto 0);
  signal dina       : std_logic_vector(3 downto 0);
  signal dinb       : std_logic_vector(3 downto 0);
  signal douta      : std_logic_vector(3 downto 0);
  signal doutb      : std_logic_vector(3 downto 0);
  signal addra      : std_logic_vector(4 downto 0);
  signal add        : std_logic_vector(4 downto 0);
  
  -----------------------------------------------------------------------------
  -- Definicion senales de control
  -----------------------------------------------------------------------------
  signal debug_mode : std_logic;
  signal web        : std_logic_vector(0 downto 0);
  signal wea        : std_logic_vector(0 downto 0);
  signal wea_int    : std_logic;
  signal cntrj_cu   : std_logic;
  signal cntrj_ld   : std_logic;
  signal cntri_cu   : std_logic;
  signal cntri_ld   : std_logic;

  -----------------------------------------------------------------------------
  -- Definicion senales de estado
  -----------------------------------------------------------------------------
  signal cmp_i   : std_logic;
  signal cmp_j   : std_logic;
  signal cmp_mem : std_logic;

begin  -- architecture struct

  (debug_mode,
   web(0),
   wea_int,
   cntrj_cu,
   cntrj_ld,
   cntri_cu,
   cntri_ld) <= ctrl;

  status <= (cmp_i,
             cmp_j,
             cmp_mem);

  i_mem : sort_mem port map (
    clka  => clk,
    wea   => wea,
    addra => addra,
    dina  => dina,
    douta => douta,
    clkb  => clk,
    web   => web,
    addrb => add,
    dinb  => douta,
    doutb => doutb);

  ----------------------------------------------------------------------------
  -- Proceso que controla el puerto A y el puerto B realizando lecturas y 
  -- escrituras de la memoria RAM de 32 palabras
  ----------------------------------------------------------------------------
  p_puertos: process (clk)
  begin
     if rising_edge(clk) then
	     if wea = "1" then
			  ram_stat(conv_integer(addra)) <= dina;
		  end if;
		   if web = "1" then
			  ram_stat(conv_integer(add)) <= dinb;
		  end if;
		  --douta <= ram_stat(conv_integer(addra));
		  --doutb <= ram_stat(conv_integer(add));
     end if;
  end process p_puertos;

  ----------------------------------------------------------------------------
  -- Proceso que implementa cuatro mutiplexores para seleccionar los datos que
  -- llegan y salen del puerto A de la memoria
  ----------------------------------------------------------------------------
  p_mux_debug : process (debug_mode, debug_we, debug_addr, douta, debug_din, wea_int, cntrj, doutb) is
  begin
     case debug_mode is
        when '0' => 
		     addra       <= std_logic_vector(cntrj);
			  dina        <= ram_stat(conv_integer(add));
			  dinb        <= ram_stat(conv_integer(addra));
			  wea(0)      <= wea_int;
			  debug_dout  <= "0000";
        when '1' => 
		     addra       <= debug_addr;
			  dina        <= debug_din;
			  dinb        <= ram_stat(conv_integer(addra));
			  wea(0)      <= debug_we;
			  debug_dout  <= dinb;
        when others => null;
     end case;
  end process p_mux_debug;
  
  -----------------------------------------------------------------------------
  -- Sumador
  -----------------------------------------------------------------------------
  p_add : process (cntrj) is
  begin  -- process p_add
     add <= cntrj + 1;
  end process p_add;

  -----------------------------------------------------------------------------
  -- Contador cntri
  -----------------------------------------------------------------------------
  p_cntri : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      cntri <= (others => '0');
    elsif rising_edge(clk) then
       if cntri_ld = '1' then
          cntri <= (others => '0');
	    elsif cntri_cu = '1' then
             cntri <= cntri + 1;
       end if;			 
    end if;
  end process p_cntri;

  -----------------------------------------------------------------------------
  -- Contador cntrj
  -----------------------------------------------------------------------------
  p_cntrj : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      cntrj <= (others => '0');
    elsif rising_edge(clk) then
       if cntrj_ld = '1' then
		    cntrj <= (others => '0');
		 elsif cntrj_cu = '1' then
				 cntrj <= cntrj + 1;
		 end if;
    end if;
  end process p_cntrj;
  
  

  -----------------------------------------------------------------------------
  -- Comparador cmp_i
  -----------------------------------------------------------------------------
  p_cmp_cntri : process (cntri) is
  begin
     if cntri < "100000" then
	     cmp_i <= '1';
	  else
	     cmp_i <= '0';
	  end if;
  end process p_cmp_cntri;

  -----------------------------------------------------------------------------
  -- Comparador cmp_j
  -----------------------------------------------------------------------------
  p_cmp_cntrj : process (cntrj) is
  begin
     if cntrj < "11111" then
	     cmp_j <= '1';
	  else
	     cmp_j <= '0';
	  end if;
  end process p_cmp_cntrj;

  -----------------------------------------------------------------------------
  -- Comparador cmp_mem
  -----------------------------------------------------------------------------
  p_cmp_mem : process (douta, doutb) is
  begin
     if douta < doutb then
	     cmp_mem <= '1';
	  else 
	     cmp_mem <= '0';
	  end if;
  end process p_cmp_mem;

end architecture rtl;