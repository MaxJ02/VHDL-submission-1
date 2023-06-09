library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package misc is

--------------------------------------------------------------------------------
--
-- Binary codes for the decimal digits 0 - 7, the rest are skipped as
-- they go unused.
--
--------------------------------------------------------------------------------
constant OFF  : std_logic_vector(6 downto 0) := "1111111";
constant ZERO : std_logic_vector(6 downto 0) := "1000000";
constant ONE  : std_logic_vector(6 downto 0) := "1111001";
constant TWO  : std_logic_vector(6 downto 0) := "0100100";
constant THREE: std_logic_vector(6 downto 0) := "0110000";
constant FOUR : std_logic_vector(6 downto 0) := "0011001";
constant FIVE : std_logic_vector(6 downto 0) := "0010010";
constant SIX  : std_logic_vector(6 downto 0) := "0000010";
constant SEVEN: std_logic_vector(6 downto 0) := "1111000";

function get_binary_code(constant digit: std_logic_vector(2 downto 0))
return std_logic_vector;
end package;





package body misc is
function get_binary_code(constant digit: std_logic_vector(2 downto 0))
return std_logic_vector is
begin
   case (digit) is
	
         when "000" =>  return ZERO;
         when "001" =>  return ONE;
         when "010" =>  return TWO;
         when "011" =>  return THREE;
         when "100" =>  return FOUR;
         when "101" =>  return FIVE;
         when "110" =>  return SIX;
         when "111" =>  return SEVEN;
         when others => return OFF;
   end case;
end function;
end package body;