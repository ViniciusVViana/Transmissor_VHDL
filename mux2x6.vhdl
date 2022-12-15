--  Multiplexador de 2 canais com 6 bits por canal
library ieee;
use ieee.std_logic_1164.all;

entity mux2x6 is
    port(
        canal_0: in std_logic_vector(5 downto 0);
        canal_1: in std_logic_vector(5 downto 0);
        sel: in std_logic;
        saida_Mux: out std_logic_vector(5 downto 0)
    );
end entity;

architecture comutar of mux2x6 is
begin
    -- atribuição condicional
    saida_Mux <= canal_0 when sel = '0' else
        canal_1 when sel = '1' else "ZZZZZZ"; 

end architecture;
