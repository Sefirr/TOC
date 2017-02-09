----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:13:19 01/22/2014 
-- Design Name: 
-- Module Name:    uc - Behavioral 
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

   entity uc is
	   port ( clk : in std_logic;
		rst_n      : in std_logic;
		ini        : in std_logic;   -- ini = '1' inicio del algoritmo
		ctrl       : out std_logic_vector(8 downto 0);
		status     : in std_logic;
		fin        : out std_logic); -- fin = '1' fin del algoritmo
	
   end uc;

   architecture Behavioral of uc is
	
	type t_state is (s0_st,s1_st, s2_st, s3_st, s4_st, s5_st, s6_st, s7_st);
	signal current_state, next_state : t_state;

   begin
	
	   p_next_state : process(current_state, status, ini) is
		begin
		
		   case current_state is
			when s0_st =>
			   if ini = '1' then
				   next_state <= s1_st;
			   else
				   next_state <= s0_st;
				end if;
			when s1_st =>
			   next_state <= s2_st;
			when s2_st =>
			   next_state <= s3_st;
			when s3_st =>
			   next_state <= s4_st;
			when s4_st =>
			   next_state <= s5_st;
			when s5_st =>
			   if status = '1' then
				   next_state <= s6_st;
				else
				   next_state <= s7_st;
				end if;
			when s6_st =>
			   next_state <= s5_st;
			when s7_st =>
			   next_state <= s0_st;
			when others => null;
		   end case;
		end process;
		
		p_outputs : process (current_state)
		   constant c_wea       : std_logic_vector(8 downto 0) := "000000001";
         constant c_addr_mux_sel         : std_logic_vector(8 downto 0) := "000000010";
         constant c_add_mux_sel	    : std_logic_vector(8 downto 0) := "000000100";
         constant c_load_rr         : std_logic_vector(8 downto 0) := "000001000";
         constant c_en_CA         : std_logic_vector(8 downto 0) := "000010000";
         constant c_loadA       : std_logic_vector(8 downto 0) := "000100000";
         constant c_load_dE   : std_logic_vector(8 downto 0) := "001000000";
         constant c_en_dL  : std_logic_vector(8 downto 0) := "010000000";	
         constant c_load_dL           : std_logic_vector(8 downto 0) := "100000000";			
				
		begin
		   ctrl <= (others => '0');
			case current_state is
			when s0_st =>
			   ctrl <= (others => '0');
				fin  <= '1';
			when s1_st =>
			   ctrl <= c_load_dL or c_load_dE or c_load_rr;
				fin  <= '0';
			when s2_st =>
			   ctrl <= (others => '0');
				fin  <= '0';
			when s3_st =>
			   ctrl <= c_en_dL or c_loadA;
				fin  <= '0';
			when s4_st =>
			   ctrl <= (others => '0');
				fin  <= '0';
			when s5_st =>
			   ctrl <= (others => '0');
				fin  <= '0';
			when s6_st =>
			   ctrl <= c_load_rr or c_add_mux_sel or c_en_CA;
				fin  <= '0';
			when s7_st =>
			   ctrl <= c_addr_mux_sel or c_wea;
				fin  <= '0';
			end case;
		end process;
		
		p_status_reg : process (clk, rst_n) is
      begin
         if rst_n = '0' then
            current_state <= s0_st;
         elsif rising_edge(clk) then
            current_state <= next_state;
         end if;
      end process p_status_reg;


   end Behavioral;