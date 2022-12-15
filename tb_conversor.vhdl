library ieee;
use ieee.std_logic_1164.all;

entity tb_conversor  is
end tb_conversor;

architecture arch of tb_conversor is

    component mux2x6 is

        port(

            canal_0: in std_logic_vector(5 downto 0);
            canal_1: in std_logic_vector(5 downto 0);
            sel: in std_logic;
            saida_Mux: out std_logic_vector(5 downto 0)

        );

    end component;

    component conversorC2_Ek is 

        port(

            canal_Conv: in std_logic_vector(5 downto 0);
            saida_Conv: out std_logic_vector(5 downto 0)
       
        );

    end component;

    component demux2x6 is

        port(

            demux_saida0: out std_logic_vector(5 downto 0);
            demux_saida1: out std_logic_vector(5 downto 0);
            sel: in std_logic;
            demux_entrada: in std_logic_vector(5 downto 0)

        );

    end component;

    signal scanal_0, scanal_1, ssaida_Mux: std_logic_vector(5 downto 0);
    signal ssel: std_logic;
    signal scanal_Conv, ssaida_Conv: std_logic_vector(5 downto 0);
    signal sdemux_entrada, sdemux_scanal_1, sdemux_scanal_0: std_logic_vector(5 downto 0);
    signal err: std_logic;

begin

    u_conv: conversorC2_Ek port map(scanal_Conv,ssaida_Conv);
    u_mux2x6: mux2x6 port map(scanal_0,scanal_1,ssel,ssaida_Mux);
    u_demux2x6: demux2x6 port map(sdemux_scanal_0, sdemux_scanal_1, ssel,sdemux_entrada);

    err <= sdemux_scanal_0(5) or sdemux_scanal_1(5);
    scanal_Conv <= scanal_0;
    scanal_1 <= ssaida_Conv;
    sdemux_entrada <= ssaida_Mux;
    
    u_teste: process

    begin
    
        scanal_0 <= "000000";
        ssel <= '1';

        wait for 10 ns;
        
        scanal_0 <= "000001";
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "000010" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "000011" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "000100" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "000101" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "000110" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "000111" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "001000" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "001001" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "001010" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "001011" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "001100" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "001101" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "001110" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "001111" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "010000" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "010001" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "010010" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "010011" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "010100" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "010101" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "010110" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "010111" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "011000" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "011001" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "011010" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "011011" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "011100" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "011101" ;
        ssel <= '0' ;

        wait for 10 ns;
        
        scanal_0 <= "011110" ;
        ssel <= '1' ;

        wait for 10 ns;
        
        scanal_0 <= "011111" ;
        ssel <= '0' ;

        wait for 10 ns;
        
    end process;

    
end architecture ; 
