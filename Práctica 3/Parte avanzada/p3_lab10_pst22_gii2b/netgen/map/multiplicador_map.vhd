--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: multiplicador_map.vhd
-- /___/   /\     Timestamp: Fri Nov 15 01:16:59 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf multiplicador.pcf -rpw 100 -tpw 0 -ar Structure -tm multiplicador -w -dir netgen/map -ofmt vhdl -sim multiplicador_map.ncd multiplicador_map.vhd 
-- Device	: 3s1000ft256-5 (PRODUCTION 1.39 2013-06-08)
-- Input file	: multiplicador_map.ncd
-- Output file	: F:\p3_lab10_pst22_gii2b\netgen\map\multiplicador_map.vhd
-- # of Entities	: 1
-- Design Name	: multiplicador
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity multiplicador is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    result : out STD_LOGIC_VECTOR ( 9 downto 0 ); 
    op1 : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    op2 : in STD_LOGIC_VECTOR ( 4 downto 0 ) 
  );
end multiplicador;

architecture Structure of multiplicador is
  signal clk_BUFGP_IBUFG_368 : STD_LOGIC; 
  signal rst_IBUF_369 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal fila_1_columna_0_i_celda_PPOUT_372 : STD_LOGIC; 
  signal fila_2_columna_0_i_celda_PPOUT_373 : STD_LOGIC; 
  signal fila_3_columna_0_i_celda_PPOUT_374 : STD_LOGIC; 
  signal fila_4_columna_0_i_celda_PPOUT_375 : STD_LOGIC; 
  signal fila_4_columna_1_i_celda_PPOUT_376 : STD_LOGIC; 
  signal fila_4_columna_2_i_celda_PPOUT_377 : STD_LOGIC; 
  signal fila_4_columna_3_i_celda_PPOUT_378 : STD_LOGIC; 
  signal fila_4_columna_4_i_celda_PPOUT_379 : STD_LOGIC; 
  signal fila_4_columna_4_i_celda_COUT_380 : STD_LOGIC; 
  signal op1_0_IBUF_381 : STD_LOGIC; 
  signal op1_1_IBUF_382 : STD_LOGIC; 
  signal op1_2_IBUF_383 : STD_LOGIC; 
  signal op1_3_IBUF_384 : STD_LOGIC; 
  signal op2_0_IBUF_385 : STD_LOGIC; 
  signal op1_4_IBUF_386 : STD_LOGIC; 
  signal op2_1_IBUF_387 : STD_LOGIC; 
  signal op2_2_IBUF_388 : STD_LOGIC; 
  signal op2_3_IBUF_389 : STD_LOGIC; 
  signal op2_4_IBUF_390 : STD_LOGIC; 
  signal fila_1_columna_3_i_celda_COUT_392 : STD_LOGIC; 
  signal fila_1_columna_4_i_celda_PPOUT_393 : STD_LOGIC; 
  signal fila_1_columna_4_i_celda_COUT_394 : STD_LOGIC; 
  signal fila_0_columna_2_i_celda_PPOUT_395 : STD_LOGIC; 
  signal fila_2_columna_4_i_celda_PPOUT_396 : STD_LOGIC; 
  signal fila_3_columna_2_i_celda_COUT_397 : STD_LOGIC; 
  signal fila_3_columna_3_i_celda_COUT_398 : STD_LOGIC; 
  signal fila_3_columna_3_i_celda_PPOUT_399 : STD_LOGIC; 
  signal fila_3_columna_4_i_celda_PPOUT_400 : STD_LOGIC; 
  signal fila_4_columna_2_i_celda_COUT_401 : STD_LOGIC; 
  signal fila_4_columna_3_i_celda_COUT_402 : STD_LOGIC; 
  signal fila_2_columna_3_i_celda_COUT_403 : STD_LOGIC; 
  signal fila_2_columna_4_i_celda_COUT_404 : STD_LOGIC; 
  signal fila_0_columna_1_i_celda_PPOUT_405 : STD_LOGIC; 
  signal fila_1_columna_0_i_celda_COUT_406 : STD_LOGIC; 
  signal fila_2_columna_2_i_celda_PPOUT_407 : STD_LOGIC; 
  signal fila_3_columna_0_i_celda_COUT_408 : STD_LOGIC; 
  signal fila_3_columna_1_i_celda_COUT_409 : STD_LOGIC; 
  signal fila_3_columna_1_i_celda_PPOUT_410 : STD_LOGIC; 
  signal fila_3_columna_4_i_celda_COUT_411 : STD_LOGIC; 
  signal fila_0_columna_3_i_celda_PPOUT_412 : STD_LOGIC; 
  signal fila_1_columna_1_i_celda_COUT_413 : STD_LOGIC; 
  signal fila_1_columna_2_i_celda_COUT_414 : STD_LOGIC; 
  signal fila_1_columna_2_i_celda_PPOUT_415 : STD_LOGIC; 
  signal fila_1_columna_1_i_celda_PPOUT_416 : STD_LOGIC; 
  signal fila_2_columna_0_i_celda_COUT_417 : STD_LOGIC; 
  signal fila_2_columna_1_i_celda_PPOUT_418 : STD_LOGIC; 
  signal fila_3_columna_2_i_celda_PPOUT_419 : STD_LOGIC; 
  signal fila_4_columna_0_i_celda_COUT_420 : STD_LOGIC; 
  signal fila_4_columna_1_i_celda_COUT_421 : STD_LOGIC; 
  signal fila_1_columna_3_i_celda_PPOUT_422 : STD_LOGIC; 
  signal fila_2_columna_1_i_celda_COUT_423 : STD_LOGIC; 
  signal fila_2_columna_2_i_celda_COUT_424 : STD_LOGIC; 
  signal fila_2_columna_3_i_celda_PPOUT_425 : STD_LOGIC; 
  signal fila_0_columna_4_i_celda_PPOUT_426 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal result_0_O : STD_LOGIC; 
  signal result_1_O : STD_LOGIC; 
  signal result_2_O : STD_LOGIC; 
  signal result_3_O : STD_LOGIC; 
  signal result_4_O : STD_LOGIC; 
  signal result_5_O : STD_LOGIC; 
  signal result_6_O : STD_LOGIC; 
  signal result_7_O : STD_LOGIC; 
  signal result_8_O : STD_LOGIC; 
  signal result_9_O : STD_LOGIC; 
  signal op1_0_INBUF : STD_LOGIC; 
  signal op1_1_INBUF : STD_LOGIC; 
  signal op1_2_INBUF : STD_LOGIC; 
  signal op1_3_INBUF : STD_LOGIC; 
  signal op2_0_INBUF : STD_LOGIC; 
  signal op1_4_INBUF : STD_LOGIC; 
  signal op2_1_INBUF : STD_LOGIC; 
  signal op2_2_INBUF : STD_LOGIC; 
  signal op2_3_INBUF : STD_LOGIC; 
  signal op2_4_INBUF : STD_LOGIC; 
  signal rst_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal fila_1_columna_4_i_celda_PPOUT_DXMUX_631 : STD_LOGIC; 
  signal fila_1_columna_4_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_1_columna_4_i_celda_PPOUT_DYMUX_618 : STD_LOGIC; 
  signal fila_1_columna_4_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_1_columna_4_i_celda_PPOUT_SRINV_609 : STD_LOGIC; 
  signal fila_1_columna_4_i_celda_PPOUT_CLKINV_608 : STD_LOGIC; 
  signal fila_0_columna_0_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_0_columna_2_i_celda_PPOUT_DYMUX_655 : STD_LOGIC; 
  signal fila_0_columna_2_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_0_columna_2_i_celda_PPOUT_SRINV_645 : STD_LOGIC; 
  signal fila_0_columna_2_i_celda_PPOUT_CLKINV_644 : STD_LOGIC; 
  signal fila_3_columna_3_i_celda_COUT_DXMUX_702 : STD_LOGIC; 
  signal fila_3_columna_3_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_3_columna_3_i_celda_COUT_DYMUX_690 : STD_LOGIC; 
  signal fila_3_columna_3_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_3_columna_3_i_celda_COUT_SRINV_682 : STD_LOGIC; 
  signal fila_3_columna_3_i_celda_COUT_CLKINV_681 : STD_LOGIC; 
  signal fila_4_columna_3_i_celda_PPOUT_DXMUX_740 : STD_LOGIC; 
  signal fila_4_columna_3_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_4_columna_3_i_celda_PPOUT_DYMUX_728 : STD_LOGIC; 
  signal fila_4_columna_3_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_4_columna_3_i_celda_PPOUT_SRINV_720 : STD_LOGIC; 
  signal fila_4_columna_3_i_celda_PPOUT_CLKINV_719 : STD_LOGIC; 
  signal fila_2_columna_4_i_celda_PPOUT_DXMUX_778 : STD_LOGIC; 
  signal fila_2_columna_4_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_2_columna_4_i_celda_PPOUT_DYMUX_766 : STD_LOGIC; 
  signal fila_2_columna_4_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_2_columna_4_i_celda_PPOUT_SRINV_758 : STD_LOGIC; 
  signal fila_2_columna_4_i_celda_PPOUT_CLKINV_757 : STD_LOGIC; 
  signal fila_1_columna_0_i_celda_PPOUT_DXMUX_816 : STD_LOGIC; 
  signal fila_1_columna_0_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_1_columna_0_i_celda_PPOUT_DYMUX_803 : STD_LOGIC; 
  signal fila_1_columna_0_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_1_columna_0_i_celda_PPOUT_SRINV_794 : STD_LOGIC; 
  signal fila_1_columna_0_i_celda_PPOUT_CLKINV_793 : STD_LOGIC; 
  signal fila_3_columna_1_i_celda_COUT_DXMUX_854 : STD_LOGIC; 
  signal fila_3_columna_1_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_3_columna_1_i_celda_COUT_DYMUX_842 : STD_LOGIC; 
  signal fila_3_columna_1_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_3_columna_1_i_celda_COUT_SRINV_834 : STD_LOGIC; 
  signal fila_3_columna_1_i_celda_COUT_CLKINV_833 : STD_LOGIC; 
  signal fila_3_columna_4_i_celda_PPOUT_DXMUX_892 : STD_LOGIC; 
  signal fila_3_columna_4_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_3_columna_4_i_celda_PPOUT_DYMUX_880 : STD_LOGIC; 
  signal fila_3_columna_4_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_3_columna_4_i_celda_PPOUT_SRINV_872 : STD_LOGIC; 
  signal fila_3_columna_4_i_celda_PPOUT_CLKINV_871 : STD_LOGIC; 
  signal fila_1_columna_2_i_celda_COUT_DXMUX_930 : STD_LOGIC; 
  signal fila_1_columna_2_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_1_columna_2_i_celda_COUT_DYMUX_918 : STD_LOGIC; 
  signal fila_1_columna_2_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_1_columna_2_i_celda_COUT_SRINV_910 : STD_LOGIC; 
  signal fila_1_columna_2_i_celda_COUT_CLKINV_909 : STD_LOGIC; 
  signal fila_2_columna_0_i_celda_PPOUT_DXMUX_968 : STD_LOGIC; 
  signal fila_2_columna_0_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_2_columna_0_i_celda_PPOUT_DYMUX_955 : STD_LOGIC; 
  signal fila_2_columna_0_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_2_columna_0_i_celda_PPOUT_SRINV_946 : STD_LOGIC; 
  signal fila_2_columna_0_i_celda_PPOUT_CLKINV_945 : STD_LOGIC; 
  signal fila_4_columna_4_i_celda_PPOUT_DXMUX_1006 : STD_LOGIC; 
  signal fila_4_columna_4_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_4_columna_4_i_celda_PPOUT_DYMUX_994 : STD_LOGIC; 
  signal fila_4_columna_4_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_4_columna_4_i_celda_PPOUT_SRINV_986 : STD_LOGIC; 
  signal fila_4_columna_4_i_celda_PPOUT_CLKINV_985 : STD_LOGIC; 
  signal fila_3_columna_0_i_celda_PPOUT_DXMUX_1044 : STD_LOGIC; 
  signal fila_3_columna_0_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_3_columna_0_i_celda_PPOUT_DYMUX_1031 : STD_LOGIC; 
  signal fila_3_columna_0_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_3_columna_0_i_celda_PPOUT_SRINV_1022 : STD_LOGIC; 
  signal fila_3_columna_0_i_celda_PPOUT_CLKINV_1021 : STD_LOGIC; 
  signal fila_1_columna_1_i_celda_PPOUT_DXMUX_1082 : STD_LOGIC; 
  signal fila_1_columna_1_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_1_columna_1_i_celda_PPOUT_DYMUX_1070 : STD_LOGIC; 
  signal fila_1_columna_1_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_1_columna_1_i_celda_PPOUT_SRINV_1062 : STD_LOGIC; 
  signal fila_1_columna_1_i_celda_PPOUT_CLKINV_1061 : STD_LOGIC; 
  signal fila_4_columna_1_i_celda_COUT_DXMUX_1120 : STD_LOGIC; 
  signal fila_4_columna_1_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_4_columna_1_i_celda_COUT_DYMUX_1108 : STD_LOGIC; 
  signal fila_4_columna_1_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_4_columna_1_i_celda_COUT_SRINV_1100 : STD_LOGIC; 
  signal fila_4_columna_1_i_celda_COUT_CLKINV_1099 : STD_LOGIC; 
  signal fila_2_columna_2_i_celda_COUT_DXMUX_1158 : STD_LOGIC; 
  signal fila_2_columna_2_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_2_columna_2_i_celda_COUT_DYMUX_1146 : STD_LOGIC; 
  signal fila_2_columna_2_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_2_columna_2_i_celda_COUT_SRINV_1138 : STD_LOGIC; 
  signal fila_2_columna_2_i_celda_COUT_CLKINV_1137 : STD_LOGIC; 
  signal fila_4_columna_0_i_celda_PPOUT_DXMUX_1196 : STD_LOGIC; 
  signal fila_4_columna_0_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_4_columna_0_i_celda_PPOUT_DYMUX_1183 : STD_LOGIC; 
  signal fila_4_columna_0_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_4_columna_0_i_celda_PPOUT_SRINV_1174 : STD_LOGIC; 
  signal fila_4_columna_0_i_celda_PPOUT_CLKINV_1173 : STD_LOGIC; 
  signal fila_2_columna_1_i_celda_PPOUT_DXMUX_1234 : STD_LOGIC; 
  signal fila_2_columna_1_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_2_columna_1_i_celda_PPOUT_DYMUX_1222 : STD_LOGIC; 
  signal fila_2_columna_1_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_2_columna_1_i_celda_PPOUT_SRINV_1214 : STD_LOGIC; 
  signal fila_2_columna_1_i_celda_PPOUT_CLKINV_1213 : STD_LOGIC; 
  signal fila_0_columna_1_i_celda_PPOUT_DXMUX_1272 : STD_LOGIC; 
  signal fila_0_columna_1_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_0_columna_1_i_celda_PPOUT_DYMUX_1258 : STD_LOGIC; 
  signal fila_0_columna_3_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_0_columna_1_i_celda_PPOUT_SRINV_1248 : STD_LOGIC; 
  signal fila_0_columna_1_i_celda_PPOUT_CLKINV_1247 : STD_LOGIC; 
  signal fila_3_columna_2_i_celda_COUT_DXMUX_1310 : STD_LOGIC; 
  signal fila_3_columna_2_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_3_columna_2_i_celda_COUT_DYMUX_1298 : STD_LOGIC; 
  signal fila_3_columna_2_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_3_columna_2_i_celda_COUT_SRINV_1290 : STD_LOGIC; 
  signal fila_3_columna_2_i_celda_COUT_CLKINV_1289 : STD_LOGIC; 
  signal fila_1_columna_3_i_celda_COUT_DXMUX_1348 : STD_LOGIC; 
  signal fila_1_columna_3_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_1_columna_3_i_celda_COUT_DYMUX_1336 : STD_LOGIC; 
  signal fila_1_columna_3_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_1_columna_3_i_celda_COUT_SRINV_1328 : STD_LOGIC; 
  signal fila_1_columna_3_i_celda_COUT_CLKINV_1327 : STD_LOGIC; 
  signal fila_4_columna_2_i_celda_COUT_DXMUX_1386 : STD_LOGIC; 
  signal fila_4_columna_2_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_4_columna_2_i_celda_COUT_DYMUX_1374 : STD_LOGIC; 
  signal fila_4_columna_2_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_4_columna_2_i_celda_COUT_SRINV_1366 : STD_LOGIC; 
  signal fila_4_columna_2_i_celda_COUT_CLKINV_1365 : STD_LOGIC; 
  signal fila_2_columna_3_i_celda_COUT_DXMUX_1424 : STD_LOGIC; 
  signal fila_2_columna_3_i_celda_COUT_or0000 : STD_LOGIC; 
  signal fila_2_columna_3_i_celda_COUT_DYMUX_1412 : STD_LOGIC; 
  signal fila_2_columna_3_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_2_columna_3_i_celda_COUT_SRINV_1404 : STD_LOGIC; 
  signal fila_2_columna_3_i_celda_COUT_CLKINV_1403 : STD_LOGIC; 
  signal fila_0_columna_4_i_celda_PPOUT_DYMUX_1445 : STD_LOGIC; 
  signal fila_0_columna_4_i_celda_PPOUT_xor0000 : STD_LOGIC; 
  signal fila_0_columna_4_i_celda_PPOUT_SRINV_1435 : STD_LOGIC; 
  signal fila_0_columna_4_i_celda_PPOUT_CLKINV_1434 : STD_LOGIC; 
  signal result_0_OUTPUT_OFF_O1INV_448 : STD_LOGIC; 
  signal result_0_OUTPUT_OFF_OSR_USED_451 : STD_LOGIC; 
  signal fila_0_columna_0_i_celda_PPOUT_453 : STD_LOGIC; 
  signal result_0_OUTPUT_OTCLK1INV_444 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  result_0_OBUF : X_OBUF
    port map (
      I => result_0_O,
      O => result(0)
    );
  result_1_OBUF : X_OBUF
    port map (
      I => result_1_O,
      O => result(1)
    );
  result_2_OBUF : X_OBUF
    port map (
      I => result_2_O,
      O => result(2)
    );
  result_3_OBUF : X_OBUF
    port map (
      I => result_3_O,
      O => result(3)
    );
  result_4_OBUF : X_OBUF
    port map (
      I => result_4_O,
      O => result(4)
    );
  result_5_OBUF : X_OBUF
    port map (
      I => result_5_O,
      O => result(5)
    );
  result_6_OBUF : X_OBUF
    port map (
      I => result_6_O,
      O => result(6)
    );
  result_7_OBUF : X_OBUF
    port map (
      I => result_7_O,
      O => result(7)
    );
  result_8_OBUF : X_OBUF
    port map (
      I => result_8_O,
      O => result(8)
    );
  result_9_OBUF : X_OBUF
    port map (
      I => result_9_O,
      O => result(9)
    );
  op1_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1(0),
      O => op1_0_INBUF
    );
  op1_0_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1_0_INBUF,
      O => op1_0_IBUF_381
    );
  op1_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1(1),
      O => op1_1_INBUF
    );
  op1_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1(2),
      O => op1_2_INBUF
    );
  op1_3_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1(3),
      O => op1_3_INBUF
    );
  op2_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2(0),
      O => op2_0_INBUF
    );
  op1_4_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1(4),
      O => op1_4_INBUF
    );
  op2_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2(1),
      O => op2_1_INBUF
    );
  op2_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2(2),
      O => op2_2_INBUF
    );
  op2_3_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2(3),
      O => op2_3_INBUF
    );
  op2_3_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2_3_INBUF,
      O => op2_3_IBUF_389
    );
  op2_4_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2(4),
      O => op2_4_INBUF
    );
  op2_4_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2_4_INBUF,
      O => op2_4_IBUF_390
    );
  rst_IBUF : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => clk_BUFGP_IBUFG_368,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  fila_1_columna_4_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_4_i_celda_PPOUT_xor0000,
      O => fila_1_columna_4_i_celda_PPOUT_DXMUX_631
    );
  fila_1_columna_4_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_4_i_celda_COUT_or0000,
      O => fila_1_columna_4_i_celda_PPOUT_DYMUX_618
    );
  fila_1_columna_4_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_1_columna_4_i_celda_PPOUT_SRINV_609
    );
  fila_1_columna_4_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_1_columna_4_i_celda_PPOUT_CLKINV_608
    );
  fila_0_columna_2_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_0_columna_2_i_celda_PPOUT_DYMUX_655,
      CE => VCC,
      CLK => fila_0_columna_2_i_celda_PPOUT_CLKINV_644,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_0_columna_2_i_celda_PPOUT_SRINV_645,
      O => fila_0_columna_2_i_celda_PPOUT_395
    );
  fila_0_columna_0_i_celda_prod1 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => op1_0_IBUF_381,
      ADR1 => op2_0_IBUF_385,
      ADR2 => VCC,
      ADR3 => VCC,
      O => fila_0_columna_0_i_celda_PPOUT_xor0000
    );
  fila_0_columna_2_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_0_columna_2_i_celda_PPOUT_xor0000,
      O => fila_0_columna_2_i_celda_PPOUT_DYMUX_655
    );
  fila_0_columna_2_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_0_columna_2_i_celda_PPOUT_SRINV_645
    );
  fila_0_columna_2_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_0_columna_2_i_celda_PPOUT_CLKINV_644
    );
  fila_3_columna_3_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_3_i_celda_COUT_or0000,
      O => fila_3_columna_3_i_celda_COUT_DXMUX_702
    );
  fila_3_columna_3_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_3_i_celda_PPOUT_xor0000,
      O => fila_3_columna_3_i_celda_COUT_DYMUX_690
    );
  fila_3_columna_3_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_3_columna_3_i_celda_COUT_SRINV_682
    );
  fila_3_columna_3_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_3_columna_3_i_celda_COUT_CLKINV_681
    );
  fila_4_columna_3_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_3_i_celda_PPOUT_xor0000,
      O => fila_4_columna_3_i_celda_PPOUT_DXMUX_740
    );
  fila_4_columna_3_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_3_i_celda_COUT_or0000,
      O => fila_4_columna_3_i_celda_PPOUT_DYMUX_728
    );
  fila_4_columna_3_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_4_columna_3_i_celda_PPOUT_SRINV_720
    );
  fila_4_columna_3_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_4_columna_3_i_celda_PPOUT_CLKINV_719
    );
  fila_2_columna_4_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_4_IBUF_386,
      ADR2 => fila_2_columna_3_i_celda_COUT_403,
      ADR3 => fila_1_columna_4_i_celda_COUT_394,
      O => fila_2_columna_4_i_celda_PPOUT_xor0000
    );
  fila_2_columna_4_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_4_i_celda_PPOUT_DYMUX_766,
      CE => VCC,
      CLK => fila_2_columna_4_i_celda_PPOUT_CLKINV_757,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_4_i_celda_PPOUT_SRINV_758,
      O => fila_2_columna_4_i_celda_COUT_404
    );
  fila_2_columna_4_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_4_i_celda_PPOUT_xor0000,
      O => fila_2_columna_4_i_celda_PPOUT_DXMUX_778
    );
  fila_2_columna_4_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_4_i_celda_COUT_or0000,
      O => fila_2_columna_4_i_celda_PPOUT_DYMUX_766
    );
  fila_2_columna_4_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_2_columna_4_i_celda_PPOUT_SRINV_758
    );
  fila_2_columna_4_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_2_columna_4_i_celda_PPOUT_CLKINV_757
    );
  fila_2_columna_4_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_4_IBUF_386,
      ADR2 => fila_2_columna_3_i_celda_COUT_403,
      ADR3 => fila_1_columna_4_i_celda_COUT_394,
      O => fila_2_columna_4_i_celda_COUT_or0000
    );
  fila_1_columna_0_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_0_i_celda_PPOUT_xor0000,
      O => fila_1_columna_0_i_celda_PPOUT_DXMUX_816
    );
  fila_1_columna_0_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_0_i_celda_COUT_or0000,
      O => fila_1_columna_0_i_celda_PPOUT_DYMUX_803
    );
  fila_1_columna_0_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_1_columna_0_i_celda_PPOUT_SRINV_794
    );
  fila_1_columna_0_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_1_columna_0_i_celda_PPOUT_CLKINV_793
    );
  fila_3_columna_1_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_1_i_celda_COUT_DXMUX_854,
      CE => VCC,
      CLK => fila_3_columna_1_i_celda_COUT_CLKINV_833,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_1_i_celda_COUT_SRINV_834,
      O => fila_3_columna_1_i_celda_COUT_409
    );
  fila_3_columna_1_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_1_i_celda_COUT_or0000,
      O => fila_3_columna_1_i_celda_COUT_DXMUX_854
    );
  fila_3_columna_1_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_1_i_celda_PPOUT_xor0000,
      O => fila_3_columna_1_i_celda_COUT_DYMUX_842
    );
  fila_3_columna_1_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_3_columna_1_i_celda_COUT_SRINV_834
    );
  fila_3_columna_1_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_3_columna_1_i_celda_COUT_CLKINV_833
    );
  fila_3_columna_4_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_4_i_celda_PPOUT_xor0000,
      O => fila_3_columna_4_i_celda_PPOUT_DXMUX_892
    );
  fila_3_columna_4_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_4_i_celda_COUT_or0000,
      O => fila_3_columna_4_i_celda_PPOUT_DYMUX_880
    );
  fila_3_columna_4_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_3_columna_4_i_celda_PPOUT_SRINV_872
    );
  fila_3_columna_4_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_3_columna_4_i_celda_PPOUT_CLKINV_871
    );
  fila_1_columna_2_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_2_i_celda_COUT_or0000,
      O => fila_1_columna_2_i_celda_COUT_DXMUX_930
    );
  fila_1_columna_2_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_2_i_celda_PPOUT_xor0000,
      O => fila_1_columna_2_i_celda_COUT_DYMUX_918
    );
  fila_1_columna_2_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_1_columna_2_i_celda_COUT_SRINV_910
    );
  fila_1_columna_2_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_1_columna_2_i_celda_COUT_CLKINV_909
    );
  fila_2_columna_0_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_0_i_celda_PPOUT_DYMUX_955,
      CE => VCC,
      CLK => fila_2_columna_0_i_celda_PPOUT_CLKINV_945,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_0_i_celda_PPOUT_SRINV_946,
      O => fila_2_columna_0_i_celda_COUT_417
    );
  fila_2_columna_0_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_0_i_celda_PPOUT_DXMUX_968,
      CE => VCC,
      CLK => fila_2_columna_0_i_celda_PPOUT_CLKINV_945,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_0_i_celda_PPOUT_SRINV_946,
      O => fila_2_columna_0_i_celda_PPOUT_373
    );
  fila_2_columna_0_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_0_i_celda_PPOUT_xor0000,
      O => fila_2_columna_0_i_celda_PPOUT_DXMUX_968
    );
  fila_2_columna_0_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_0_i_celda_COUT_or0000,
      O => fila_2_columna_0_i_celda_PPOUT_DYMUX_955
    );
  fila_2_columna_0_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_2_columna_0_i_celda_PPOUT_SRINV_946
    );
  fila_2_columna_0_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_2_columna_0_i_celda_PPOUT_CLKINV_945
    );
  fila_2_columna_0_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"8080"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_0_IBUF_381,
      ADR2 => fila_1_columna_1_i_celda_PPOUT_416,
      ADR3 => VCC,
      O => fila_2_columna_0_i_celda_COUT_or0000
    );
  fila_4_columna_4_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_4_i_celda_PPOUT_xor0000,
      O => fila_4_columna_4_i_celda_PPOUT_DXMUX_1006
    );
  fila_4_columna_4_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_4_i_celda_COUT_or0000,
      O => fila_4_columna_4_i_celda_PPOUT_DYMUX_994
    );
  fila_4_columna_4_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_4_columna_4_i_celda_PPOUT_SRINV_986
    );
  fila_4_columna_4_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_4_columna_4_i_celda_PPOUT_CLKINV_985
    );
  fila_3_columna_0_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_0_i_celda_PPOUT_xor0000,
      O => fila_3_columna_0_i_celda_PPOUT_DXMUX_1044
    );
  fila_3_columna_0_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_0_i_celda_COUT_or0000,
      O => fila_3_columna_0_i_celda_PPOUT_DYMUX_1031
    );
  fila_3_columna_0_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_3_columna_0_i_celda_PPOUT_SRINV_1022
    );
  fila_3_columna_0_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_3_columna_0_i_celda_PPOUT_CLKINV_1021
    );
  fila_1_columna_1_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_1_i_celda_PPOUT_xor0000,
      O => fila_1_columna_1_i_celda_PPOUT_DXMUX_1082
    );
  fila_1_columna_1_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_1_i_celda_COUT_or0000,
      O => fila_1_columna_1_i_celda_PPOUT_DYMUX_1070
    );
  fila_1_columna_1_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_1_columna_1_i_celda_PPOUT_SRINV_1062
    );
  fila_1_columna_1_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_1_columna_1_i_celda_PPOUT_CLKINV_1061
    );
  fila_4_columna_1_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_1_i_celda_COUT_or0000,
      O => fila_4_columna_1_i_celda_COUT_DXMUX_1120
    );
  fila_4_columna_1_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_1_i_celda_PPOUT_xor0000,
      O => fila_4_columna_1_i_celda_COUT_DYMUX_1108
    );
  fila_4_columna_1_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_4_columna_1_i_celda_COUT_SRINV_1100
    );
  fila_4_columna_1_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_4_columna_1_i_celda_COUT_CLKINV_1099
    );
  fila_2_columna_2_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_2_i_celda_COUT_DYMUX_1146,
      CE => VCC,
      CLK => fila_2_columna_2_i_celda_COUT_CLKINV_1137,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_2_i_celda_COUT_SRINV_1138,
      O => fila_2_columna_2_i_celda_PPOUT_407
    );
  fila_2_columna_2_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_2_i_celda_COUT_DXMUX_1158,
      CE => VCC,
      CLK => fila_2_columna_2_i_celda_COUT_CLKINV_1137,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_2_i_celda_COUT_SRINV_1138,
      O => fila_2_columna_2_i_celda_COUT_424
    );
  fila_2_columna_2_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_2_i_celda_COUT_or0000,
      O => fila_2_columna_2_i_celda_COUT_DXMUX_1158
    );
  fila_2_columna_2_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_2_i_celda_PPOUT_xor0000,
      O => fila_2_columna_2_i_celda_COUT_DYMUX_1146
    );
  fila_2_columna_2_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_2_columna_2_i_celda_COUT_SRINV_1138
    );
  fila_2_columna_2_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_2_columna_2_i_celda_COUT_CLKINV_1137
    );
  fila_2_columna_2_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_2_IBUF_383,
      ADR2 => fila_1_columna_3_i_celda_PPOUT_422,
      ADR3 => fila_2_columna_1_i_celda_COUT_423,
      O => fila_2_columna_2_i_celda_PPOUT_xor0000
    );
  fila_4_columna_0_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_0_i_celda_PPOUT_xor0000,
      O => fila_4_columna_0_i_celda_PPOUT_DXMUX_1196
    );
  fila_4_columna_0_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_0_i_celda_COUT_or0000,
      O => fila_4_columna_0_i_celda_PPOUT_DYMUX_1183
    );
  fila_4_columna_0_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_4_columna_0_i_celda_PPOUT_SRINV_1174
    );
  fila_4_columna_0_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_4_columna_0_i_celda_PPOUT_CLKINV_1173
    );
  fila_2_columna_1_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_1_i_celda_PPOUT_xor0000,
      O => fila_2_columna_1_i_celda_PPOUT_DXMUX_1234
    );
  fila_2_columna_1_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_1_i_celda_COUT_or0000,
      O => fila_2_columna_1_i_celda_PPOUT_DYMUX_1222
    );
  fila_2_columna_1_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_2_columna_1_i_celda_PPOUT_SRINV_1214
    );
  fila_2_columna_1_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_2_columna_1_i_celda_PPOUT_CLKINV_1213
    );
  fila_0_columna_1_i_celda_prod1 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => op1_1_IBUF_382,
      ADR1 => op2_0_IBUF_385,
      ADR2 => VCC,
      ADR3 => VCC,
      O => fila_0_columna_1_i_celda_PPOUT_xor0000
    );
  fila_0_columna_1_i_celda_PPOUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_0_columna_1_i_celda_PPOUT_xor0000,
      O => fila_0_columna_1_i_celda_PPOUT_DXMUX_1272
    );
  fila_0_columna_1_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_0_columna_3_i_celda_PPOUT_xor0000,
      O => fila_0_columna_1_i_celda_PPOUT_DYMUX_1258
    );
  fila_0_columna_1_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_0_columna_1_i_celda_PPOUT_SRINV_1248
    );
  fila_0_columna_1_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_0_columna_1_i_celda_PPOUT_CLKINV_1247
    );
  fila_0_columna_3_i_celda_prod1 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => op1_3_IBUF_384,
      ADR1 => op2_0_IBUF_385,
      ADR2 => VCC,
      ADR3 => VCC,
      O => fila_0_columna_3_i_celda_PPOUT_xor0000
    );
  fila_3_columna_2_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_2_i_celda_COUT_or0000,
      O => fila_3_columna_2_i_celda_COUT_DXMUX_1310
    );
  fila_3_columna_2_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_2_i_celda_PPOUT_xor0000,
      O => fila_3_columna_2_i_celda_COUT_DYMUX_1298
    );
  fila_3_columna_2_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_3_columna_2_i_celda_COUT_SRINV_1290
    );
  fila_3_columna_2_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_3_columna_2_i_celda_COUT_CLKINV_1289
    );
  fila_1_columna_3_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_3_i_celda_COUT_or0000,
      O => fila_1_columna_3_i_celda_COUT_DXMUX_1348
    );
  fila_1_columna_3_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_3_i_celda_PPOUT_xor0000,
      O => fila_1_columna_3_i_celda_COUT_DYMUX_1336
    );
  fila_1_columna_3_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_1_columna_3_i_celda_COUT_SRINV_1328
    );
  fila_1_columna_3_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_1_columna_3_i_celda_COUT_CLKINV_1327
    );
  fila_4_columna_2_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_2_i_celda_COUT_or0000,
      O => fila_4_columna_2_i_celda_COUT_DXMUX_1386
    );
  fila_4_columna_2_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_2_i_celda_PPOUT_xor0000,
      O => fila_4_columna_2_i_celda_COUT_DYMUX_1374
    );
  fila_4_columna_2_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_4_columna_2_i_celda_COUT_SRINV_1366
    );
  fila_4_columna_2_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_4_columna_2_i_celda_COUT_CLKINV_1365
    );
  fila_2_columna_3_i_celda_COUT_DXMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_3_i_celda_COUT_or0000,
      O => fila_2_columna_3_i_celda_COUT_DXMUX_1424
    );
  fila_2_columna_3_i_celda_COUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_3_i_celda_PPOUT_xor0000,
      O => fila_2_columna_3_i_celda_COUT_DYMUX_1412
    );
  fila_2_columna_3_i_celda_COUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_2_columna_3_i_celda_COUT_SRINV_1404
    );
  fila_2_columna_3_i_celda_COUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_2_columna_3_i_celda_COUT_CLKINV_1403
    );
  fila_0_columna_4_i_celda_PPOUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_0_columna_4_i_celda_PPOUT_xor0000,
      O => fila_0_columna_4_i_celda_PPOUT_DYMUX_1445
    );
  fila_0_columna_4_i_celda_PPOUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => fila_0_columna_4_i_celda_PPOUT_SRINV_1435
    );
  fila_0_columna_4_i_celda_PPOUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fila_0_columna_4_i_celda_PPOUT_CLKINV_1434
    );
  fila_0_columna_2_i_celda_prod1 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => op1_2_IBUF_383,
      ADR1 => op2_0_IBUF_385,
      ADR2 => VCC,
      ADR3 => VCC,
      O => fila_0_columna_2_i_celda_PPOUT_xor0000
    );
  fila_2_columna_0_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"7878"
    )
    port map (
      ADR0 => op1_0_IBUF_381,
      ADR1 => op2_2_IBUF_388,
      ADR2 => fila_1_columna_1_i_celda_PPOUT_416,
      ADR3 => VCC,
      O => fila_2_columna_0_i_celda_PPOUT_xor0000
    );
  fila_3_columna_0_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_0_i_celda_PPOUT_DXMUX_1044,
      CE => VCC,
      CLK => fila_3_columna_0_i_celda_PPOUT_CLKINV_1021,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_0_i_celda_PPOUT_SRINV_1022,
      O => fila_3_columna_0_i_celda_PPOUT_374
    );
  fila_2_columna_2_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_2_IBUF_383,
      ADR2 => fila_1_columna_3_i_celda_PPOUT_422,
      ADR3 => fila_2_columna_1_i_celda_COUT_423,
      O => fila_2_columna_2_i_celda_COUT_or0000
    );
  fila_4_columna_1_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_1_i_celda_COUT_DXMUX_1120,
      CE => VCC,
      CLK => fila_4_columna_1_i_celda_COUT_CLKINV_1099,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_1_i_celda_COUT_SRINV_1100,
      O => fila_4_columna_1_i_celda_COUT_421
    );
  fila_0_columna_3_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_0_columna_1_i_celda_PPOUT_DYMUX_1258,
      CE => VCC,
      CLK => fila_0_columna_1_i_celda_PPOUT_CLKINV_1247,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_0_columna_1_i_celda_PPOUT_SRINV_1248,
      O => fila_0_columna_3_i_celda_PPOUT_412
    );
  fila_2_columna_1_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_1_i_celda_PPOUT_DXMUX_1234,
      CE => VCC,
      CLK => fila_2_columna_1_i_celda_PPOUT_CLKINV_1213,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_1_i_celda_PPOUT_SRINV_1214,
      O => fila_2_columna_1_i_celda_PPOUT_418
    );
  fila_0_columna_4_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_0_columna_4_i_celda_PPOUT_DYMUX_1445,
      CE => VCC,
      CLK => fila_0_columna_4_i_celda_PPOUT_CLKINV_1434,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_0_columna_4_i_celda_PPOUT_SRINV_1435,
      O => fila_0_columna_4_i_celda_PPOUT_426
    );
  fila_1_columna_3_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_3_i_celda_COUT_DXMUX_1348,
      CE => VCC,
      CLK => fila_1_columna_3_i_celda_COUT_CLKINV_1327,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_3_i_celda_COUT_SRINV_1328,
      O => fila_1_columna_3_i_celda_COUT_392
    );
  fila_0_columna_4_i_celda_prod1 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => op1_4_IBUF_386,
      ADR1 => op2_0_IBUF_385,
      ADR2 => VCC,
      ADR3 => VCC,
      O => fila_0_columna_4_i_celda_PPOUT_xor0000
    );
  fila_2_columna_3_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_3_i_celda_COUT_DXMUX_1424,
      CE => VCC,
      CLK => fila_2_columna_3_i_celda_COUT_CLKINV_1403,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_3_i_celda_COUT_SRINV_1404,
      O => fila_2_columna_3_i_celda_COUT_403
    );
  clk_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_IBUFG_368
    );
  result_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_0_columna_0_i_celda_PPOUT_xor0000,
      O => result_0_OUTPUT_OFF_O1INV_448
    );
  result_0_OUTPUT_OFF_OSR_USED : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_IBUF_369,
      O => result_0_OUTPUT_OFF_OSR_USED_451
    );
  result_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_0_columna_0_i_celda_PPOUT_453,
      O => result_0_O
    );
  fila_0_columna_0_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => result_0_OUTPUT_OFF_O1INV_448,
      CE => VCC,
      CLK => result_0_OUTPUT_OTCLK1INV_444,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => result_0_OUTPUT_OFF_OSR_USED_451,
      O => fila_0_columna_0_i_celda_PPOUT_453
    );
  result_0_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => result_0_OUTPUT_OTCLK1INV_444
    );
  op1_1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1_1_INBUF,
      O => op1_1_IBUF_382
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_369
    );
  op1_2_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1_2_INBUF,
      O => op1_2_IBUF_383
    );
  op1_3_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1_3_INBUF,
      O => op1_3_IBUF_384
    );
  op2_0_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2_0_INBUF,
      O => op2_0_IBUF_385
    );
  op1_4_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op1_4_INBUF,
      O => op1_4_IBUF_386
    );
  op2_1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2_1_INBUF,
      O => op2_1_IBUF_387
    );
  op2_2_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => op2_2_INBUF,
      O => op2_2_IBUF_388
    );
  fila_1_columna_4_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"8080"
    )
    port map (
      ADR0 => op2_1_IBUF_387,
      ADR1 => op1_4_IBUF_386,
      ADR2 => fila_1_columna_3_i_celda_COUT_392,
      ADR3 => VCC,
      O => fila_1_columna_4_i_celda_COUT_or0000
    );
  fila_1_columna_4_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_4_i_celda_PPOUT_DYMUX_618,
      CE => VCC,
      CLK => fila_1_columna_4_i_celda_PPOUT_CLKINV_608,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_4_i_celda_PPOUT_SRINV_609,
      O => fila_1_columna_4_i_celda_COUT_394
    );
  fila_1_columna_4_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"7878"
    )
    port map (
      ADR0 => op1_4_IBUF_386,
      ADR1 => op2_1_IBUF_387,
      ADR2 => fila_1_columna_3_i_celda_COUT_392,
      ADR3 => VCC,
      O => fila_1_columna_4_i_celda_PPOUT_xor0000
    );
  fila_1_columna_4_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_4_i_celda_PPOUT_DXMUX_631,
      CE => VCC,
      CLK => fila_1_columna_4_i_celda_PPOUT_CLKINV_608,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_4_i_celda_PPOUT_SRINV_609,
      O => fila_1_columna_4_i_celda_PPOUT_393
    );
  fila_3_columna_3_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_3_IBUF_389,
      ADR1 => op1_3_IBUF_384,
      ADR2 => fila_2_columna_4_i_celda_PPOUT_396,
      ADR3 => fila_3_columna_2_i_celda_COUT_397,
      O => fila_3_columna_3_i_celda_PPOUT_xor0000
    );
  fila_3_columna_3_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_3_i_celda_COUT_DYMUX_690,
      CE => VCC,
      CLK => fila_3_columna_3_i_celda_COUT_CLKINV_681,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_3_i_celda_COUT_SRINV_682,
      O => fila_3_columna_3_i_celda_PPOUT_399
    );
  fila_3_columna_3_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op1_3_IBUF_384,
      ADR1 => op2_3_IBUF_389,
      ADR2 => fila_2_columna_4_i_celda_PPOUT_396,
      ADR3 => fila_3_columna_2_i_celda_COUT_397,
      O => fila_3_columna_3_i_celda_COUT_or0000
    );
  fila_3_columna_3_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_3_i_celda_COUT_DXMUX_702,
      CE => VCC,
      CLK => fila_3_columna_3_i_celda_COUT_CLKINV_681,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_3_i_celda_COUT_SRINV_682,
      O => fila_3_columna_3_i_celda_COUT_398
    );
  fila_4_columna_3_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_3_i_celda_PPOUT_DYMUX_728,
      CE => VCC,
      CLK => fila_4_columna_3_i_celda_PPOUT_CLKINV_719,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_3_i_celda_PPOUT_SRINV_720,
      O => fila_4_columna_3_i_celda_COUT_402
    );
  fila_4_columna_3_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op1_3_IBUF_384,
      ADR1 => op2_4_IBUF_390,
      ADR2 => fila_3_columna_4_i_celda_PPOUT_400,
      ADR3 => fila_4_columna_2_i_celda_COUT_401,
      O => fila_4_columna_3_i_celda_COUT_or0000
    );
  fila_4_columna_3_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_4_IBUF_390,
      ADR1 => op1_3_IBUF_384,
      ADR2 => fila_3_columna_4_i_celda_PPOUT_400,
      ADR3 => fila_4_columna_2_i_celda_COUT_401,
      O => fila_4_columna_3_i_celda_PPOUT_xor0000
    );
  fila_4_columna_3_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_3_i_celda_PPOUT_DXMUX_740,
      CE => VCC,
      CLK => fila_4_columna_3_i_celda_PPOUT_CLKINV_719,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_3_i_celda_PPOUT_SRINV_720,
      O => fila_4_columna_3_i_celda_PPOUT_378
    );
  fila_2_columna_4_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_4_i_celda_PPOUT_DXMUX_778,
      CE => VCC,
      CLK => fila_2_columna_4_i_celda_PPOUT_CLKINV_757,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_4_i_celda_PPOUT_SRINV_758,
      O => fila_2_columna_4_i_celda_PPOUT_396
    );
  fila_1_columna_0_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"8080"
    )
    port map (
      ADR0 => op2_1_IBUF_387,
      ADR1 => op1_0_IBUF_381,
      ADR2 => fila_0_columna_1_i_celda_PPOUT_405,
      ADR3 => VCC,
      O => fila_1_columna_0_i_celda_COUT_or0000
    );
  fila_1_columna_0_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_0_i_celda_PPOUT_DYMUX_803,
      CE => VCC,
      CLK => fila_1_columna_0_i_celda_PPOUT_CLKINV_793,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_0_i_celda_PPOUT_SRINV_794,
      O => fila_1_columna_0_i_celda_COUT_406
    );
  fila_1_columna_0_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"7878"
    )
    port map (
      ADR0 => op1_0_IBUF_381,
      ADR1 => op2_1_IBUF_387,
      ADR2 => fila_0_columna_1_i_celda_PPOUT_405,
      ADR3 => VCC,
      O => fila_1_columna_0_i_celda_PPOUT_xor0000
    );
  fila_1_columna_0_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_0_i_celda_PPOUT_DXMUX_816,
      CE => VCC,
      CLK => fila_1_columna_0_i_celda_PPOUT_CLKINV_793,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_0_i_celda_PPOUT_SRINV_794,
      O => fila_1_columna_0_i_celda_PPOUT_372
    );
  fila_3_columna_1_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_1_i_celda_COUT_DYMUX_842,
      CE => VCC,
      CLK => fila_3_columna_1_i_celda_COUT_CLKINV_833,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_1_i_celda_COUT_SRINV_834,
      O => fila_3_columna_1_i_celda_PPOUT_410
    );
  fila_3_columna_1_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_3_IBUF_389,
      ADR1 => op1_1_IBUF_382,
      ADR2 => fila_2_columna_2_i_celda_PPOUT_407,
      ADR3 => fila_3_columna_0_i_celda_COUT_408,
      O => fila_3_columna_1_i_celda_PPOUT_xor0000
    );
  fila_3_columna_1_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op2_3_IBUF_389,
      ADR1 => op1_1_IBUF_382,
      ADR2 => fila_2_columna_2_i_celda_PPOUT_407,
      ADR3 => fila_3_columna_0_i_celda_COUT_408,
      O => fila_3_columna_1_i_celda_COUT_or0000
    );
  fila_3_columna_4_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op1_4_IBUF_386,
      ADR1 => op2_3_IBUF_389,
      ADR2 => fila_3_columna_3_i_celda_COUT_398,
      ADR3 => fila_2_columna_4_i_celda_COUT_404,
      O => fila_3_columna_4_i_celda_COUT_or0000
    );
  fila_3_columna_4_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_4_i_celda_PPOUT_DYMUX_880,
      CE => VCC,
      CLK => fila_3_columna_4_i_celda_PPOUT_CLKINV_871,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_4_i_celda_PPOUT_SRINV_872,
      O => fila_3_columna_4_i_celda_COUT_411
    );
  fila_3_columna_4_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_3_IBUF_389,
      ADR1 => op1_4_IBUF_386,
      ADR2 => fila_3_columna_3_i_celda_COUT_398,
      ADR3 => fila_2_columna_4_i_celda_COUT_404,
      O => fila_3_columna_4_i_celda_PPOUT_xor0000
    );
  fila_3_columna_4_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_4_i_celda_PPOUT_DXMUX_892,
      CE => VCC,
      CLK => fila_3_columna_4_i_celda_PPOUT_CLKINV_871,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_4_i_celda_PPOUT_SRINV_872,
      O => fila_3_columna_4_i_celda_PPOUT_400
    );
  fila_1_columna_2_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_2_i_celda_COUT_DYMUX_918,
      CE => VCC,
      CLK => fila_1_columna_2_i_celda_COUT_CLKINV_909,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_2_i_celda_COUT_SRINV_910,
      O => fila_1_columna_2_i_celda_PPOUT_415
    );
  fila_1_columna_2_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_1_IBUF_387,
      ADR1 => op1_2_IBUF_383,
      ADR2 => fila_0_columna_3_i_celda_PPOUT_412,
      ADR3 => fila_1_columna_1_i_celda_COUT_413,
      O => fila_1_columna_2_i_celda_PPOUT_xor0000
    );
  fila_1_columna_2_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op2_1_IBUF_387,
      ADR1 => op1_2_IBUF_383,
      ADR2 => fila_0_columna_3_i_celda_PPOUT_412,
      ADR3 => fila_1_columna_1_i_celda_COUT_413,
      O => fila_1_columna_2_i_celda_COUT_or0000
    );
  fila_1_columna_2_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_2_i_celda_COUT_DXMUX_930,
      CE => VCC,
      CLK => fila_1_columna_2_i_celda_COUT_CLKINV_909,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_2_i_celda_COUT_SRINV_910,
      O => fila_1_columna_2_i_celda_COUT_414
    );
  fila_4_columna_4_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op1_4_IBUF_386,
      ADR1 => op2_4_IBUF_390,
      ADR2 => fila_4_columna_3_i_celda_COUT_402,
      ADR3 => fila_3_columna_4_i_celda_COUT_411,
      O => fila_4_columna_4_i_celda_COUT_or0000
    );
  fila_4_columna_4_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_4_i_celda_PPOUT_DYMUX_994,
      CE => VCC,
      CLK => fila_4_columna_4_i_celda_PPOUT_CLKINV_985,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_4_i_celda_PPOUT_SRINV_986,
      O => fila_4_columna_4_i_celda_COUT_380
    );
  fila_4_columna_4_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_4_IBUF_390,
      ADR1 => op1_4_IBUF_386,
      ADR2 => fila_4_columna_3_i_celda_COUT_402,
      ADR3 => fila_3_columna_4_i_celda_COUT_411,
      O => fila_4_columna_4_i_celda_PPOUT_xor0000
    );
  fila_4_columna_4_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_4_i_celda_PPOUT_DXMUX_1006,
      CE => VCC,
      CLK => fila_4_columna_4_i_celda_PPOUT_CLKINV_985,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_4_i_celda_PPOUT_SRINV_986,
      O => fila_4_columna_4_i_celda_PPOUT_379
    );
  fila_3_columna_0_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"8080"
    )
    port map (
      ADR0 => op2_3_IBUF_389,
      ADR1 => op1_0_IBUF_381,
      ADR2 => fila_2_columna_1_i_celda_PPOUT_418,
      ADR3 => VCC,
      O => fila_3_columna_0_i_celda_COUT_or0000
    );
  fila_3_columna_0_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_0_i_celda_PPOUT_DYMUX_1031,
      CE => VCC,
      CLK => fila_3_columna_0_i_celda_PPOUT_CLKINV_1021,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_0_i_celda_PPOUT_SRINV_1022,
      O => fila_3_columna_0_i_celda_COUT_408
    );
  fila_3_columna_0_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"7878"
    )
    port map (
      ADR0 => op1_0_IBUF_381,
      ADR1 => op2_3_IBUF_389,
      ADR2 => fila_2_columna_1_i_celda_PPOUT_418,
      ADR3 => VCC,
      O => fila_3_columna_0_i_celda_PPOUT_xor0000
    );
  fila_1_columna_1_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op2_1_IBUF_387,
      ADR1 => op1_1_IBUF_382,
      ADR2 => fila_0_columna_2_i_celda_PPOUT_395,
      ADR3 => fila_1_columna_0_i_celda_COUT_406,
      O => fila_1_columna_1_i_celda_COUT_or0000
    );
  fila_1_columna_1_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_1_i_celda_PPOUT_DYMUX_1070,
      CE => VCC,
      CLK => fila_1_columna_1_i_celda_PPOUT_CLKINV_1061,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_1_i_celda_PPOUT_SRINV_1062,
      O => fila_1_columna_1_i_celda_COUT_413
    );
  fila_1_columna_1_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_1_IBUF_387,
      ADR1 => op1_1_IBUF_382,
      ADR2 => fila_0_columna_2_i_celda_PPOUT_395,
      ADR3 => fila_1_columna_0_i_celda_COUT_406,
      O => fila_1_columna_1_i_celda_PPOUT_xor0000
    );
  fila_1_columna_1_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_1_i_celda_PPOUT_DXMUX_1082,
      CE => VCC,
      CLK => fila_1_columna_1_i_celda_PPOUT_CLKINV_1061,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_1_i_celda_PPOUT_SRINV_1062,
      O => fila_1_columna_1_i_celda_PPOUT_416
    );
  fila_4_columna_1_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_1_i_celda_COUT_DYMUX_1108,
      CE => VCC,
      CLK => fila_4_columna_1_i_celda_COUT_CLKINV_1099,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_1_i_celda_COUT_SRINV_1100,
      O => fila_4_columna_1_i_celda_PPOUT_376
    );
  fila_4_columna_1_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_4_IBUF_390,
      ADR1 => op1_1_IBUF_382,
      ADR2 => fila_3_columna_2_i_celda_PPOUT_419,
      ADR3 => fila_4_columna_0_i_celda_COUT_420,
      O => fila_4_columna_1_i_celda_PPOUT_xor0000
    );
  fila_4_columna_1_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op1_1_IBUF_382,
      ADR1 => op2_4_IBUF_390,
      ADR2 => fila_3_columna_2_i_celda_PPOUT_419,
      ADR3 => fila_4_columna_0_i_celda_COUT_420,
      O => fila_4_columna_1_i_celda_COUT_or0000
    );
  fila_4_columna_0_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"8080"
    )
    port map (
      ADR0 => op2_4_IBUF_390,
      ADR1 => op1_0_IBUF_381,
      ADR2 => fila_3_columna_1_i_celda_PPOUT_410,
      ADR3 => VCC,
      O => fila_4_columna_0_i_celda_COUT_or0000
    );
  fila_4_columna_0_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_0_i_celda_PPOUT_DYMUX_1183,
      CE => VCC,
      CLK => fila_4_columna_0_i_celda_PPOUT_CLKINV_1173,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_0_i_celda_PPOUT_SRINV_1174,
      O => fila_4_columna_0_i_celda_COUT_420
    );
  fila_4_columna_0_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"7878"
    )
    port map (
      ADR0 => op1_0_IBUF_381,
      ADR1 => op2_4_IBUF_390,
      ADR2 => fila_3_columna_1_i_celda_PPOUT_410,
      ADR3 => VCC,
      O => fila_4_columna_0_i_celda_PPOUT_xor0000
    );
  fila_4_columna_0_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_0_i_celda_PPOUT_DXMUX_1196,
      CE => VCC,
      CLK => fila_4_columna_0_i_celda_PPOUT_CLKINV_1173,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_0_i_celda_PPOUT_SRINV_1174,
      O => fila_4_columna_0_i_celda_PPOUT_375
    );
  fila_2_columna_1_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_1_i_celda_PPOUT_DYMUX_1222,
      CE => VCC,
      CLK => fila_2_columna_1_i_celda_PPOUT_CLKINV_1213,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_1_i_celda_PPOUT_SRINV_1214,
      O => fila_2_columna_1_i_celda_COUT_423
    );
  fila_2_columna_1_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_1_IBUF_382,
      ADR2 => fila_1_columna_2_i_celda_PPOUT_415,
      ADR3 => fila_2_columna_0_i_celda_COUT_417,
      O => fila_2_columna_1_i_celda_COUT_or0000
    );
  fila_2_columna_1_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_1_IBUF_382,
      ADR2 => fila_1_columna_2_i_celda_PPOUT_415,
      ADR3 => fila_2_columna_0_i_celda_COUT_417,
      O => fila_2_columna_1_i_celda_PPOUT_xor0000
    );
  fila_0_columna_1_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_0_columna_1_i_celda_PPOUT_DXMUX_1272,
      CE => VCC,
      CLK => fila_0_columna_1_i_celda_PPOUT_CLKINV_1247,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_0_columna_1_i_celda_PPOUT_SRINV_1248,
      O => fila_0_columna_1_i_celda_PPOUT_405
    );
  fila_3_columna_2_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_2_i_celda_COUT_DYMUX_1298,
      CE => VCC,
      CLK => fila_3_columna_2_i_celda_COUT_CLKINV_1289,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_2_i_celda_COUT_SRINV_1290,
      O => fila_3_columna_2_i_celda_PPOUT_419
    );
  fila_3_columna_2_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_3_IBUF_389,
      ADR1 => op1_2_IBUF_383,
      ADR2 => fila_2_columna_3_i_celda_PPOUT_425,
      ADR3 => fila_3_columna_1_i_celda_COUT_409,
      O => fila_3_columna_2_i_celda_PPOUT_xor0000
    );
  fila_3_columna_2_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op1_2_IBUF_383,
      ADR1 => op2_3_IBUF_389,
      ADR2 => fila_2_columna_3_i_celda_PPOUT_425,
      ADR3 => fila_3_columna_1_i_celda_COUT_409,
      O => fila_3_columna_2_i_celda_COUT_or0000
    );
  fila_3_columna_2_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_3_columna_2_i_celda_COUT_DXMUX_1310,
      CE => VCC,
      CLK => fila_3_columna_2_i_celda_COUT_CLKINV_1289,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_3_columna_2_i_celda_COUT_SRINV_1290,
      O => fila_3_columna_2_i_celda_COUT_397
    );
  fila_1_columna_3_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_1_columna_3_i_celda_COUT_DYMUX_1336,
      CE => VCC,
      CLK => fila_1_columna_3_i_celda_COUT_CLKINV_1327,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_1_columna_3_i_celda_COUT_SRINV_1328,
      O => fila_1_columna_3_i_celda_PPOUT_422
    );
  fila_1_columna_3_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_1_IBUF_387,
      ADR1 => op1_3_IBUF_384,
      ADR2 => fila_0_columna_4_i_celda_PPOUT_426,
      ADR3 => fila_1_columna_2_i_celda_COUT_414,
      O => fila_1_columna_3_i_celda_PPOUT_xor0000
    );
  fila_1_columna_3_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op2_1_IBUF_387,
      ADR1 => op1_3_IBUF_384,
      ADR2 => fila_0_columna_4_i_celda_PPOUT_426,
      ADR3 => fila_1_columna_2_i_celda_COUT_414,
      O => fila_1_columna_3_i_celda_COUT_or0000
    );
  fila_4_columna_2_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_4_IBUF_390,
      ADR1 => op1_2_IBUF_383,
      ADR2 => fila_3_columna_3_i_celda_PPOUT_399,
      ADR3 => fila_4_columna_1_i_celda_COUT_421,
      O => fila_4_columna_2_i_celda_PPOUT_xor0000
    );
  fila_4_columna_2_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_2_i_celda_COUT_DYMUX_1374,
      CE => VCC,
      CLK => fila_4_columna_2_i_celda_COUT_CLKINV_1365,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_2_i_celda_COUT_SRINV_1366,
      O => fila_4_columna_2_i_celda_PPOUT_377
    );
  fila_4_columna_2_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op1_2_IBUF_383,
      ADR1 => op2_4_IBUF_390,
      ADR2 => fila_3_columna_3_i_celda_PPOUT_399,
      ADR3 => fila_4_columna_1_i_celda_COUT_421,
      O => fila_4_columna_2_i_celda_COUT_or0000
    );
  fila_4_columna_2_i_celda_COUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_4_columna_2_i_celda_COUT_DXMUX_1386,
      CE => VCC,
      CLK => fila_4_columna_2_i_celda_COUT_CLKINV_1365,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_4_columna_2_i_celda_COUT_SRINV_1366,
      O => fila_4_columna_2_i_celda_COUT_401
    );
  fila_2_columna_3_i_celda_PPOUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => fila_2_columna_3_i_celda_COUT_DYMUX_1412,
      CE => VCC,
      CLK => fila_2_columna_3_i_celda_COUT_CLKINV_1403,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fila_2_columna_3_i_celda_COUT_SRINV_1404,
      O => fila_2_columna_3_i_celda_PPOUT_425
    );
  fila_2_columna_3_i_celda_Mxor_PPOUT_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_3_IBUF_384,
      ADR2 => fila_1_columna_4_i_celda_PPOUT_393,
      ADR3 => fila_2_columna_2_i_celda_COUT_424,
      O => fila_2_columna_3_i_celda_PPOUT_xor0000
    );
  fila_2_columna_3_i_celda_COUT_or00001 : X_LUT4
    generic map(
      INIT => X"F880"
    )
    port map (
      ADR0 => op2_2_IBUF_388,
      ADR1 => op1_3_IBUF_384,
      ADR2 => fila_1_columna_4_i_celda_PPOUT_393,
      ADR3 => fila_2_columna_2_i_celda_COUT_424,
      O => fila_2_columna_3_i_celda_COUT_or0000
    );
  result_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_1_columna_0_i_celda_PPOUT_372,
      O => result_1_O
    );
  result_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_2_columna_0_i_celda_PPOUT_373,
      O => result_2_O
    );
  result_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_3_columna_0_i_celda_PPOUT_374,
      O => result_3_O
    );
  result_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_0_i_celda_PPOUT_375,
      O => result_4_O
    );
  result_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_1_i_celda_PPOUT_376,
      O => result_5_O
    );
  result_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_2_i_celda_PPOUT_377,
      O => result_6_O
    );
  result_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_3_i_celda_PPOUT_378,
      O => result_7_O
    );
  result_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_4_i_celda_PPOUT_379,
      O => result_8_O
    );
  result_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => fila_4_columna_4_i_celda_COUT_380,
      O => result_9_O
    );
  NlwBlock_multiplicador_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_multiplicador_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

