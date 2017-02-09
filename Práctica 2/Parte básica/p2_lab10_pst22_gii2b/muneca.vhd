----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:14 10/21/2013 
-- Design Name: 
-- Module Name:    munyeca - circuito 
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

   entity muneca is
   port (clk : in std_logic; --Señal de reloj 25MHz
   rst : in std_logic;       --Señal de reset asincrono nivel bajo     
   r : in std_logic;         --Señal de entrada ruido (1 si hay ruido)
   c : in std_logic;         --Señal de entrada chupete (1 si tiene chupete)
   g : out std_logic;        --Señal de salida(1 si silencio)
   l : out std_logic);       --Señal de salida(1 si llorando, 0 hablando)
   end muneca;

   architecture circuito of muneca is

   type t_state is (tranquila_st, habla_st, dormida_st, asustada_st);
   signal current_state , next_state : t_state;

   begin
		 
   p_next_state : process(current_state, R, C)
   begin
   case current_state is 
   when tranquila_st =>
   if( c = '0' and r = '1') then
      next_state <= habla_st;
   elsif( c = '1' and r = '0') then
      next_state <= dormida_st;
   else 
	   next_state <= current_state;
   end if;

   when habla_st =>
   if (c = '1') then
      next_state <= dormida_st;
   else
      next_state <= current_state;
   end if;

   when dormida_st =>
   if (r = '1') then
      next_state <= asustada_st;
   else
      next_state <= current_state;
   end if;

   when asustada_st =>
   if (c = '1' and r = '0') then
      next_state <= dormida_st;
   elsif (c = '0' and r = '0') then
      next_state <= tranquila_st;
   else 
	   next_state <= current_state;
   end if;
	when others =>
		next_state <= current_state;
   end case;
   end process;

   p_outputs : process(current_state)
   begin
   case current_state is
   when tranquila_st =>
      g <= '0';
      l <= '0'; 
	when habla_st => 
	   g <= '1';
		l <= '0';
	when dormida_st => 
	   g <= '0';
		l <= '0';
	when asustada_st =>
	   g <= '1';
		l <= '1';
   end case;
   end process;

   p_reg : process(clk, rst)
   begin
   if rst = '0' then
      current_state <= tranquila_st;
   elsif rst = '1' and rising_edge(clk) then
      current_state <= next_state;
   end if;
   end process;
   end circuito;