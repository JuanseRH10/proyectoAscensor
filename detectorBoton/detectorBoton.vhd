library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity detectorBoton is
    Port (
        clk      : in  std_logic;
        reset1   : in  std_logic; 
        reset2   : in  std_logic; 
        PS       : in  std_logic_vector(4 downto 0);
        PB       : in  std_logic_vector(4 downto 0);
        PD       : in  std_logic_vector(4 downto 0);
        pet1     : out std_logic_vector(4 downto 0);
        pet2     : out std_logic_vector(4 downto 0)
    );
end detectorBoton;

architecture arch_detectorBoton of detectorBoton is

    signal pet1_reg, pet2_reg : std_logic_vector(4 downto 0) := (others => '0');
    signal prev_PS, prev_PB, prev_PD : std_logic_vector(4 downto 0) := (others => '0');
    signal nueva_pet : std_logic_vector(4 downto 0) := (others => '0');
	 
begin

process(clk)
begin
    if rising_edge(clk) then
        -- Reseteo de cada flip-flop de forma independiente
        if reset1 = '1' then
            pet1_reg <= (others => '0');
        end if;
        if reset2 = '1' then
            pet2_reg <= (others => '0');
        end if;
        
        nueva_pet <= (others => '0'); 
        if (prev_PS = "00000") and (PS /= "00000") then
            nueva_pet <= PS;
        end if;
        if (prev_PB = "00000") and (PB /= "00000") then
            nueva_pet <= PB;
        end if;
        if (prev_PD = "00000") and (PD /= "00000") then
            nueva_pet <= PD;
        end if;
        
       
        if nueva_pet /= "00000" then
            if pet1_reg = "00000" then
                pet1_reg <= nueva_pet;
            elsif pet2_reg = "00000" then
                pet2_reg <= nueva_pet;
            end if;
        end if;
        
        
        prev_PS <= PS;
        prev_PB <= PB;
        prev_PD <= PD;
		  
    end if;
end process;

pet1 <= pet1_reg;
pet2 <= pet2_reg;

end arch_detectorBoton;
