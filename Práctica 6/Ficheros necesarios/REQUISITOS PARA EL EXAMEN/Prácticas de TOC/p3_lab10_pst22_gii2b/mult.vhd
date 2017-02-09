----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:36 11/09/2013 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY multiplicador IS
-- Definición de genéricos para los buses:
GENERIC( n : natural := 5);
-- Definición de los puertos del componente MULTIPLICADOR:
PORT( op1 : IN std_logic_vector( n-1 DOWNTO 0 );
op2 : IN std_logic_vector( n-1 DOWNTO 0 );
result : OUT std_logic_vector( (2*n-1) DOWNTO 0 ) );
END multiplicador;

ARCHITECTURE Behavioral OF multiplicador IS

-- Usamos un componente "celda":
COMPONENT celda IS
PORT ( M	 : IN std_logic;
Q	 : IN std_logic;
PPIN	 : IN std_logic;
CIN	 : IN std_logic;
COUT : OUT std_logic;
PPOUT : OUT std_logic );
END component;

-- Definimos dos tipos auxiliares para controlar los buses intermedios:
TYPE matrix IS ARRAY (n-1 DOWNTO 0) OF std_logic_vector (n DOWNTO 0);
TYPE matrix1 IS ARRAY (n DOWNTO 0) OF std_logic_vector (n DOWNTO 0);

SIGNAL c : matrix;	-- Bus "matricial" de acarreos
SIGNAL pp :	matrix1;	-- Bus "matricial" de productos parciales

BEGIN

-- Inicialización de los primeros productos parciales a cero
pp(0) <= ( others => '0' );

fila : FOR i IN (n-1) DOWNTO 0 GENERATE
-- Al inicio de cada fila, el acarreo q introducimos es cero
c(i)(0) <= '0';
-- Al final de cada fila, el pp_salida es el de entrada de la fila de abajo
pp(i+1)(n) <= c(i)(n);

columna : FOR j IN (n-1) DOWNTO 0 GENERATE
-- Instanciamos cada celda:
i_celda : celda PORT MAP( M => op1(j),
Q => op2(i),
PPIN => pp(i)(j+1),
CIN => c(i)(j),
COUT =>	c(i)(j+1),
PPOUT => pp(i+1)(j) );
END GENERATE;
END GENERATE;

-- Recorremos todas las posibles salidas (los 10 bits)
salidas : FOR i IN (2*n-1) DOWNTO 0 GENERATE

salidas_1 : IF ( i < n ) GENERATE
result(i) <= pp(i+1)(0);
END GENERATE;

salidas_2 : IF ( i > (n-1) ) GENERATE
result(i) <= pp(n)( i-(n-1) );
END GENERATE;

END GENERATE;

END Behavioral;