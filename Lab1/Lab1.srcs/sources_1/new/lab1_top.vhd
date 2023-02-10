----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/01/30 16:21:03
-- Design Name: 
-- Module Name: lab1_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab1_top is
    Port ( 
           -- Push Buttons
           BTNC : in STD_LOGIC;
           BTND : in STD_LOGIC;
           BTNU : in STD_LOGIC;
           -- Switches (16 Switches)
           SW : in STD_LOGIC_VECTOR (15 downto 0);
           -- LEDs (16 LEDs)
           LED : out STD_LOGIC_VECTOR (15 downto 0);
           -- Seg7 Display Signals
           SEG7_CATH : out STD_LOGIC_VECTOR (7 downto 0);
           AN : out STD_LOGIC_VECTOR (7 downto 0));
end lab1_top;

architecture Behavioral of lab1_top is
    -- Decoder compenment from seg7_hex entity
    component seg7_hex
    port (digit : in STD_LOGIC_VECTOR (3 downto 0);
           seg7 : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal display_digit : std_logic_vector(3 downto 0); 
begin
    -- The 7-segment display will be displating digit depend on the slider switch SW3 - SW0
    -- When center button is pressed the all zeros are display on the 7-segment
    display_digit <= SW(3 downto 0) when BTNC = '0' else "0000";
    
    -- Decoder compenment take input digit from the SW3 - SW0 and output the digit on the 7-segment display
    seg7_decode: seg7_hex PORT MAP (display_digit, SEG7_CATH); 
    
    -- When Center button is pressed all display are active
    -- When Up Button is pressed only upper four display are acive
    -- When Down Button is pressed only bottom four display are acive
    AN <= "00000000" when BTNC = '1' else
          "00001111" when BTNU = '1' else
          "11110000" when BTND = '1' else
          not SW(11 downto 4);
          
    -- Green LEDs LD15 to LD0 will be light up based on the which switch SW0 to SW15 is set to the High position
    LED <= SW;
end Behavioral;





