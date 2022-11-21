-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/21/2022 11:00:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MUX21A2130
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX21A2130_vhd_vec_tst IS
END MUX21A2130_vhd_vec_tst;
ARCHITECTURE MUX21A2130_arch OF MUX21A2130_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT MUX21A2130
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	s : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MUX21A2130
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	s => s,
	y => y
	);

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 2500 ps;
	a <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
LOOP
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b;

-- s
t_prcs_s: PROCESS
BEGIN
LOOP
	s <= '0';
	WAIT FOR 500000 ps;
	s <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s;
END MUX21A2130_arch;
