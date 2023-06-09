--------------------------------------------------------------------------------
-- vgsevenseg.vhd: 
--
-- Gate network for a 7-segment display, which based on
-- input signals from slide switches SWITCH[2:0] on a FPGA board, 
-- should display a digit 0 - 7 on a 7-segment display.
--
-- 
--
-- Hardware implemented for the FPGA card Terasic DE0
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc.all;


entity vgsevenseg is
   port(switch : in std_logic_vector(2 downto 0);
        display: out std_logic_vector(6 downto 0));
end entity;

architecture behaviour of vgsevenseg is
signal digit : std_logic_vector(2 downto 0);
begin

   display <= get_binary_code(digit);
   digit <= switch(2 downto 0);

end architecture;