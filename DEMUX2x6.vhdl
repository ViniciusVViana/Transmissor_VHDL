--  Demultiplexador de 2 canais com 6 bits por canal
library ieee;
use ieee.std_logic_1164.all;

entity demux2x6 is
    port(
        demux_saida0: out std_logic_vector(5 downto 0);
        demux_saida1: out std_logic_vector(5 downto 0);
        sel: in std_logic;
        demux_entrada: in std_logic_vector(5 downto 0)
        
    
    );
end entity;

architecture descomutar of demux2x6 is
begin
    -- atribuição condicional
    demux_saida0 <= demux_entrada when sel = '0' else "ZZZZZZ";
    demux_saida1 <= demux_entrada when sel = '1' else "ZZZZZZ";

end architecture;
