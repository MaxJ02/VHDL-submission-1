-----------------------------------------------------------------------------------------------------------------
-- Realization of the gate network for a multiplier that multiplies
-- two 2-bit input signals A[1:0] and B[1:0].
--
-- The result is obtained through four bits X[3:0]. Therefore, the following applies:
-- X[3:0] = A[1:0] * B[1:0],
-- where X[3:0] represents the output of the gate network, and A[1:0] and B[1:0] represent the input signals.
--
-- The inputs are labeled a, b, c, d, and the outputs are labeled x, y, z, v for simplicity.
------------------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;


entity multiplicator is
    port(a, b, c ,d: in std_logic;
         x, y, z, v: out std_logic);
end entity;


architecture behaviour of multiplicator is
signal a_n, b_n, d_n: std_logic;
begin

    a_n <= not a;
    b_n <= not b;
    d_n <= not d;
    
    
    x <= a and b and c and d;
    y <= (a and b_n and c) or (a and c and d_n);
    z <= (a and b_n and d) or (a_n and b and c) or (a and b and (c xor d));
    v <= b and d;
    
end architecture;