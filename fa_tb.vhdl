library ieee;
use ieee.std_logic_1164.all;

entity fa_tb is
end fa_tb;

architecture test of fa_tb is
	component fa
	port
	(
		Ax : in STD_Logic;
		Bx : in STD_Logic;
		Cin : in STD_Logic;
		Sx : out STD_Logic;
		Cout : out STD_Logic
	);
	end component;
	
	signal Ax, Bx, Cin, Sx, Cout : std_ulogic;
begin	
	full_adder: fa port map (Ax => Ax, Bx => Bx, Cin => Cin, Sx => Sx, Cout => Cout);
	
	process begin
	
		Ax <= 'X';
		Bx <= 'X';
		Cin <= 'X';
		wait for 1 ns;
		
		Ax <= '0';
		Bx <= '0';
		Cin <= '0';
		wait for 1 ns;
		 
		Ax <= '0';
		Bx <= '0';
		Cin <= '1';
		wait for 1 ns;
		
		Ax <= '0';
		Bx <= '1';
		Cin <= '0';
		wait for 1 ns;
		
		Ax <= '0';
		Bx <= '1';
		Cin <= '1';
		wait for 1 ns;
		
		Ax <= '0';
		Bx <= '1';
		Cin <= '1';
		wait for 1 ns;
		
		Ax <= '1';
		Bx <= '0';
		Cin <= '0';
		wait for 1 ns;
		
		Ax <= '1';
		Bx <= '0';
		Cin <= '1';
		wait for 1 ns;
		
		Ax <= '1';
		Bx <= '1';
		Cin <= '1';
		wait for 1 ns;
		
		
		assert false report "Reached end of test";
		wait;
	
	end process;
	
end test;