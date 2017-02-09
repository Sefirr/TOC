
-- VHDL Instantiation Created from source file multiplicador.vhd -- 00:29:25 11/15/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT multiplicador
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;
		op1 : IN std_logic_vector(4 downto 0);
		op2 : IN std_logic_vector(4 downto 0);          
		result : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_multiplicador: multiplicador PORT MAP(
		rst => ,
		clk => ,
		op1 => ,
		op2 => ,
		result => 
	);


