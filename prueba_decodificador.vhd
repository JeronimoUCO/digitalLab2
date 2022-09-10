--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:29:22 09/09/2022
-- Design Name:   
-- Module Name:   C:/Users/Maria/Desktop/Codigo/Logica digital/deodificadorBCD/prueba_decodificador.vhd
-- Project Name:  deodificadorBCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd_prueba
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY prueba_decodificador IS
END prueba_decodificador;
 
ARCHITECTURE behavior OF prueba_decodificador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_prueba
    PORT(
         datos : IN  std_logic_vector(3 downto 0);
         an : OUT  std_logic_vector(3 downto 0);
         segmentos : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal datos : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal an : std_logic_vector(3 downto 0);
   signal segmentos : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_prueba PORT MAP (
          datos => datos,
          an => an,
          segmentos => segmentos
        );
	
	tb:PROCESS
	BEGIN
	datos<="0000"; wait for 100 ns;	
		datos<="0001"; wait for 100 ns;	
		datos<="0010"; wait for 100 ns;	
		datos<="0011"; wait for 100 ns;	
		datos<="0100"; wait for 100 ns;	
		datos<="0101"; wait for 100 ns;	
		datos<="0110"; wait for 100 ns;	
		datos<="0111"; wait for 100 ns;	
		datos<="1000"; wait for 100 ns;	
		datos<="1001"; wait for 100 ns;
	END PROCESS;

END;
