library ieee;
use ieee.std_logic_1164.all; 

entity conversorC2_Ek is
    port(
        canal_Conv: in std_logic_vector(5 downto 0);
        saida_Conv: out std_logic_vector(5 downto 0)
    );
end entity;

architecture conversor of conversorC2_Ek is
begin
    saida_Conv(0) <= not(canal_Conv(0));
    saida_Conv(1) <= (canal_Conv(1) and canal_Conv(2)) or (not(canal_Conv(2)) and canal_Conv(3) and not(canal_Conv(1))) or (not(canal_Conv(1)) and not(canal_Conv(2)) and canal_Conv(0)) or (not(canal_Conv(4)) and not(canal_Conv(1)) and not(canal_Conv(3)) and not(canal_Conv(2)));
    saida_Conv(2) <= (canal_Conv(0) and canal_Conv(2)) or (canal_Conv(1) and canal_Conv(0)) or (not(canal_Conv(1)) and canal_Conv(3) and not(canal_Conv(0)) and not(canal_Conv(2))) or (not(canal_Conv(1)) and not(canal_Conv(2)) and not(canal_Conv(0)));
    saida_Conv(3) <= (not(canal_Conv(2)) and not(canal_Conv(3)) and not(canal_Conv(0)) and not(canal_Conv(1))) or (canal_Conv(2) and canal_Conv(3)) or (canal_Conv(1) and canal_Conv(3)) or (canal_Conv(0) and canal_Conv(3) and not(canal_Conv(2)));
    saida_Conv(4) <= (canal_Conv(0) and not(canal_Conv(4))) or (canal_Conv(1) and not(canal_Conv(4))) or (canal_Conv(2) and not(canal_Conv(4))) or (canal_Conv(3) and not(canal_Conv(4)));
    saida_Conv(5) <= '1' when (canal_Conv(0) = '0') and (canal_Conv(1) = '0') and (canal_Conv(2) = '0') and (canal_Conv(3) = '0') and (canal_Conv(4) = '1') else '0';
end architecture;
