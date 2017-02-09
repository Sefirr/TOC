----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:42 01/22/2014 
-- Design Name: 
-- Module Name:    cd - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cd is
  port (clk        : in  std_logic;
        rst_n      : in  std_logic;
		  dirE : in std_logic_vector(4 downto 0);
	     dirL : in std_logic_vector(4 downto 0);
        debug_addr : in  std_logic_vector(4 downto 0);
        debug_din  : in  std_logic_vector(7 downto 0);
        debug_we   : in  std_logic_vector(0 downto 0);
        debug_dout : out std_logic_vector(7 downto 0);
		  ctrl       : in std_logic_vector(8 downto 0);
		  status     : out std_logic
        );
end cd;

architecture Behavioral of cd is

   COMPONENT mem
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
  END COMPONENT;
  
  signal addra            : std_logic_vector(4 downto 0);
  signal CA               : unsigned(7 downto 0);
  signal RdirL            : unsigned(4 downto 0);
  signal RdirE            : unsigned(4 downto 0);
  signal RR               : std_logic_vector(7 downto 0);
  signal add              : std_logic_vector(7 downto 0);
  signal mux_output      : std_logic_vector(7 downto 0);
  signal dina             : std_logic_vector(7 downto 0);
  signal douta            : std_logic_vector(7 downto 0);
  signal doutb            : std_logic_vector(7 downto 0);
  
  -- Señales de control
  signal wea_int : std_logic_vector(0 downto 0);
  signal addr_mux_sel : std_logic;
  signal add_mux_sel : std_logic;
  signal load_rr : std_logic;
  signal en_CA : std_logic;
  signal loadA  : std_logic;
  signal load_dE : std_logic;
  signal en_dL : std_logic;
  signal load_dL : std_logic;
		

begin

   (wea_int(0),
    addr_mux_sel,
    add_mux_sel,
    load_rr,
    en_CA,
    loadA,
    load_dE,
	 en_dL,
	 load_dL) <= ctrl;

   i_mem : mem   PORT MAP (
    clka => clk,
    wea => wea_int,
    addra => addra,
    dina => dina,
    douta => douta,
    clkb => clk,
    web => debug_we,
    addrb => debug_addr,
    dinb => debug_din,
    doutb => debug_dout
  );
  
  p_mux_debug1 : process (addr_mux_sel, RdirE, RdirL) is
  begin
     if addr_mux_sel = '1' then
	     addra <= std_logic_vector(RdirE);
	  else
	     addra <= std_logic_vector(RdirL);
	  end if;
  end process p_mux_debug1;
  
  p_mux_debug2 : process (add_mux_sel, add) is
  begin
     if add_mux_sel = '1' then
	     mux_output <= add;
	  else
	     mux_output <= (others => '0');
	  end if;
  end process p_mux_debug2;
  
  -----------------------------------------------------------------------------
  -- Sumador
  -----------------------------------------------------------------------------
  p_add : process (RR, douta) is
  
  begin  -- process p_add
     add <= std_logic_vector(unsigned(RR) + unsigned(douta));
  end process p_add;
  
  -----------------------------------------------------------------------------
  -- Contador RdirL
  -----------------------------------------------------------------------------
  p_RdirL : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      RdirL <= (others => '0');
    elsif rising_edge(clk) then
	    if load_dL = '1' then
		    RdirL <= unsigned(dirL);
		 elsif en_dL = '1' then
		    RdirL <= RdirL + 1;
		 end if;
    end if;
  end process p_RdirL;
  
  -----------------------------------------------------------------------------
  -- Contador RdirE
  -----------------------------------------------------------------------------
  p_RdirE : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      RdirE <= (others => '0');
    elsif rising_edge(clk) then
	    if load_dE = '1' then
		   RdirE <= unsigned(dirE);
		 end if;
    end if;
  end process p_RdirE;
  
  -----------------------------------------------------------------------------
  -- Contador CA
  -----------------------------------------------------------------------------
  p_CA : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      CA <= (others => '0');
    elsif rising_edge(clk) then
	    if loadA = '1' then
		    CA <= unsigned(douta);
		 elsif en_CA = '1' then
		    CA <= CA - 1;
		 end if;
    end if;
  end process p_CA;
  
  -----------------------------------------------------------------------------
  -- Contador RR
  -----------------------------------------------------------------------------
  p_RR : process (clk, rst_n) is
  begin
    if rst_n = '0' then
       RR <= (others => '0');
    elsif rising_edge(clk) then
	    if load_rr = '1' then
		    RR <= mux_output;
		 end if;
    end if;
  end process p_RR;
  
  -----------------------------------------------------------------------------
  -- Comparador cmp_CA
  -----------------------------------------------------------------------------
  p_cmp_CA : process (CA) is
  begin
     if CA >= "1" then
	     status <= '1';
	  else
	     status <= '0';
	  end if;
  end process p_cmp_CA;


end Behavioral;

