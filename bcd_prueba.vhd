----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:50 09/09/2022 
-- Design Name: 
-- Module Name:    bcd_prueba - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_prueba is
    Port ( datos : in  STD_LOGIC_VECTOR (3 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           segmentos : out  STD_LOGIC_VECTOR (7 downto 0));
end bcd_prueba;

architecture Behavioral of bcd_prueba is

begin
an<="1110"; --habilitador display (solo aplica para 1 display)

segmentos <= "11000000" WHEN datos="0000" ELSE--mostrar 0
         "11111001" WHEN datos="0001" ELSE --mostrar 1
			"10100100" WHEN datos="0010" ELSE --mostrar 2
			"10110000" WHEN datos="0011" ELSE --mostrar 3
			"10011001" WHEN datos="0100" ELSE --mostrar 4
			"10010010" WHEN datos="0101" ELSE --mostrar 5
			"10000011" WHEN datos="0110" ELSE --mostrar 6
			"11111000" WHEN datos="0111" ELSE --mostrar 7
			"10000000" WHEN datos="1000" ELSE --mostrar 8
			"10011000" WHEN datos="1001" ELSE --mostrar 9
			"01111111";
end Behavioral;

