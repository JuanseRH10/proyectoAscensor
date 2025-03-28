library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity restador is
	generic
	(
		n	: integer  :=	4
	);

	port
	(
		
		x, y	: in  std_logic_vector(n-1 downto 0);
		sig   : out std_logic;
		mag   : out std_logic_vector(n-1 downto 0)

	);
end restador;



architecture arch_restador of restador is

	signal D1, D2 : unsigned(n downto 0);

begin

	D1 <= unsigned('0' & x) - unsigned('0' & y);
	D2 <= unsigned('0' & y) - unsigned('0' & x);
	
	process(D1, D2)
	begin
	
		if D1(n) = '0' then
		
			sig <= '0';
			mag <= std_logic_vector(D1(n-1 downto 0));
			
		else
		
			sig <= '1';
			mag <= std_logic_vector(D2(n-1 downto 0));
		
		end if;

	end process;
	
end arch_restador;




