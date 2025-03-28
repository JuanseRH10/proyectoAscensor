library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity codificador is
    Port (
        I0, I1, I2, I3, I4, I5, I6, I7    : in  std_logic;
		  
        code  : out std_logic_vector(2 downto 0);    
        valido : out std_logic                      
    );
end codificador;

architecture arch_codificador of codificador is
begin
    process(I0, I1, I2, I3, I4, I5, I6, I7)
    begin
        if I7 = '1' then
            code  <= "111";
            valido <= '1';
        elsif I6 = '1' then
            code  <= "110";
            valido <= '1';
        elsif I5 = '1' then
            code  <= "101";
            valido <= '1';
        elsif I4 = '1' then
            code  <= "100";
            valido <= '1';
        elsif I3 = '1' then
            code  <= "011";
            valido <= '1';
        elsif I2 = '1' then
            code  <= "010";
            valido <= '1';
        elsif I1 = '1' then
            code  <= "001";
            valido <= '1';
        elsif I0 = '1' then
            code  <= "000";
            valido <= '1';
        else
            code  <= "000";
            valido <= '0';  -- No hay ninguna entrada activa
        end if;
    end process;
end arch_codificador;
