library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity enableAscensor is
    Port (
        sobreCarga      : in  std_logic;
        estadoPuerta    : in  std_logic;
        anomalia        : in  std_logic;
        cambiandoEstado : in  std_logic;
        enable  : out std_logic
    );
end enableAscensor;

architecture arch_enableAscensor of enableAscensor is
begin
    process(sobreCarga, estadoPuerta, anomalia, cambiandoEstado)
    begin
        if (sobreCarga = '0' and estadoPuerta = '0' and anomalia = '0' and cambiandoEstado = '0') then
            enable <= '1';
        else
            enable <= '0';
        end if;
    end process;
end arch_enableAscensor;
