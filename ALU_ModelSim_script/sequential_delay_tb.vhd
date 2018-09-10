library ieee;
use ieee.std_logic_1164.all;

entity sequential_delay_tb is
end entity;

architecture behavorial_tb of sequential_delay_tb is

  signal clk:std_logic:='0';
  signal rst:std_logic:='0';

  signal a:std_logic:='0';
  signal b:std_logic:='0';
  signal c:std_logic:='0';
  signal y:std_logic:='0';

  component sequential_delay is
    port(
      clk:in std_logic;
      rst:in std_logic;

      a,b,c : in std_logic;
      y   : out std_logic
    );
  end component;

begin

  DUT:sequential_delay
  port map
  (
    clk=>clk,
    rst=>rst,
    a=>a,
    b=>b,
    c=>c,
    y=>y
  );

  clk<= not clk after 10 ns;
  rst<='1', '0' after 5 ns;
  a<='0','1' after 5 ns,
         '0' after 20 ns;
 b<='0','1' after 30 ns,
         '0' after 50 ns;
c<='0','1' after 25 ns,
       '0' after 60 ns;




end behavorial_tb;
