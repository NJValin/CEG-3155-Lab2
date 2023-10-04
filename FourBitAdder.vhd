library ieee;
use ieee.std_logic_1164.all;

entity FourBitAdder is
	port (
	A, B : in STD_LOGIC_VECTOR(3 downto 0);
	SUB : in STD_LOGIC;
	Cout : out STD_LOGIC;
	SUM : out STD_LOGIC_VECTOR(3 downto 0));
end FourBitAdder;

architecture struc of FourBitAdder is
	signal Cout1, Cout2, Cout3: STD_LOGIC;
	begin
		FA0 : entity work.FullAdder(struc)
			port map (
			A(0), (B(0)xor SUB), SUB,
			SUM(0), Cout1);
		
		FA1 : entity work.FullAdder(struc)
			port map (
			A(1), (B(1)xor SUB), Cout1,
			SUM(1), Cout2);
		
		FA2 : entity work.FullAdder(struc)
			port map (
			A(2), (B(2)xor SUB), Cout2,
			SUM(2), Cout3);
		
		FA3 : entity work.FullAdder(struc)
			port map (
			A(3), (B(3)xor SUB), Cout3,
			SUM(3), Cout);
end architecture;
		
