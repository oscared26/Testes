library ieee;
use ieee.std_logic_1164.all;

entity sequential_delay is
  port(
      clk:in std_logic;
      rst:in std_logic;

      a,b,c : in std_logic;
      y   : out std_logic
  );
end entity;

  architecture behavorial of sequential_delay is

    signal old_value,new_value:integer:=0;
    begin

      process(a,b,c)
      begin
        y<=(a and b) or (b and c) or (a and c);
      end process;

      process(clk,rst)
        --variable fib:integer;
        --variable j:integer;
        --variable i:integer;
        --variable old_value,new_value:integer;
      begin
        if rst='1' then
          --fib:=0;
          --j:=-1;
          old_value<=0;
          new_value<=1;
        else
          if rising_edge(clk) then
              --if j<1 then
                --fib:=0;
                --old_value:=0;
                --new_value:=1;

              --else
              --  old_value:=fib;
                --for i in 1 to j loop
                  new_value<=old_value+new_value;
                --end loop;
                  old_value<=new_value;

              --end if;
              --j:=j+1;

          end if;
        end if;


      end process;

  end behavorial;
