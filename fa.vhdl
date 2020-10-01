library ieee;
use ieee.std_logic_1164.all;

entity fa is
	Port (Ax : in STD_Logic;
		  Bx : in STD_Logic;
		  Cin : in STD_Logic;
		  Sx : out 	STD_Logic;
		  Cout : out STD_Logic);
end fa;

architecture behave of fa is
begin
	Sx <= Ax xor Bx xor Cin;
	Cout <= (Ax and Bx) or (Ax and Cin) or (Bx and Cin);
end behave;