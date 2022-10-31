Library ieee;
use ieee.std_logic_1164.all;

entity half_sub is
    port (a,c:in bit;d,b:out bit);
end half_sub;

architecture data of half_sub is
    begin
        d <= a xor c ;
        b <= (a and (not c));
    end data;