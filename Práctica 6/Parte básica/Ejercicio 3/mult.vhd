----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:29:45 01/22/2014 
-- Design Name: 
-- Module Name:    mult - Behavioral 
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

   entity mult is
	port ( clk : in std_logic;
	rst_n : in std_logic;
	ini : in std_logic;
	fin : out std_logic;
	dirE : in std_logic_vector(4 downto 0);
	dirL : in std_logic_vector(4 downto 0);
	result: out std_logic_vector(7 downto 0);
	debug_addr: in std_logic_vector(4 downto 0);
	debug_din : in std_logic_vector(7 downto 0);
	debug_dout : out std_logic_vector(7 downto 0);
	debug_we : in std_logic_vector(0 downto 0));

   end mult;

   architecture Behavioral of mult is
	
	COMPONENT uc
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		ini : IN std_logic;
		status : IN std_logic;          
		ctrl : OUT std_logic_vector(8 downto 0);
		fin : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT cd
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		dirE : IN std_logic_vector(4 downto 0);
		dirL : IN std_logic_vector(4 downto 0);
		debug_addr : IN std_logic_vector(4 downto 0);
		debug_din : IN std_logic_vector(7 downto 0);
		debug_we : IN std_logic_vector(0 downto 0);
		ctrl : IN std_logic_vector(8 downto 0);          
		debug_dout : OUT std_logic_vector(7 downto 0);
		status : OUT std_logic
		);
	END COMPONENT;

	
   signal ctrl   : std_logic_vector(8 downto 0);    -- Control vector
   signal status : std_logic;    -- Status vector
	
   begin
	
	i_uc: uc PORT MAP(
		clk => clk,
		rst_n => rst_n,
		ini => ini,
		ctrl => ctrl,
		status => status,
		fin => fin
	);
	
	i_cd: cd PORT MAP(
		clk => clk,
		rst_n => rst_n,
		dirE => dirE,
		dirL => dirL,
		debug_addr => debug_addr,
		debug_din => debug_din,
		debug_we => debug_we,
		debug_dout => debug_dout,
		ctrl => ctrl,
		status => status
	);

   end Behavioral;

