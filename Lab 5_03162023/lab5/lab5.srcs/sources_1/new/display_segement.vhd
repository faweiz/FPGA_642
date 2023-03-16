----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2023 10:59:36 AM
-- Design Name: 
-- Module Name: display_segement - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display_segement is
  Port (sclk            : IN std_logic;
        rst		        : IN std_logic;
        switch          : IN std_logic_vector (1 downto 0);
        seg7_cat        : OUT std_logic_vector (7 downto 0);
        seg7_an         : OUT std_logic_vector (7 downto 0);
        display_x_digit : IN std_logic_vector(7 downto 0);
        display_y_digit : IN std_logic_vector(7 downto 0);
        display_ad_digit: IN std_logic_vector(7 downto 0);
        display_1d_digit: IN std_logic_vector(7 downto 0);
        display_x_data  : IN std_logic_vector(7 downto 0);
        display_y_data  : IN std_logic_vector(7 downto 0);
        display_z_data  : IN std_logic_vector(7 downto 0));
end display_segement;

architecture behavior of display_segement is
  -- Decoder compenment from seg7_hex entity
  component seg7_hex
  port (digit : in std_logic_vector (3 downto 0);
         seg7 : out std_logic_vector (7 downto 0));
  end component;
  signal display_digit : std_logic_vector(3 downto 0); 
  signal refresh_counter: std_logic_vector(20 downto 0);
  signal Anode_activating_counter: std_logic_vector(2 downto 0);
begin
 -- creating 16.6ms = 60Hz refresh period to keep 7-display actived
  -- 100MHz / 100Hz = 1,000,000 => log(1,000,000)/log(2) = 20 bits needed
  process(sclk, rst)
  begin
    if(rst = '1') then
       refresh_counter <= (others=>'0');
    elsif(rising_edge(sclk)) then
       refresh_counter <= refresh_counter + 1;
    end if;
  end process;
  -- Determine current Anode location
  Anode_activating_counter <= refresh_counter(20 downto 18);
  process(Anode_activating_counter)
  begin
    case Anode_activating_counter is
       when "000" =>
           seg7_an <= "11111110";
           display_digit <= display_y_digit(3 downto 0);  
       when "001" =>  
           seg7_an <= "11111101";
           display_digit <= display_y_digit(7 downto 4);
       when "010" =>
           seg7_an <= "11111011";
           display_digit <= display_x_digit(3 downto 0);
       when "011" =>
           seg7_an <= "11110111";
           display_digit <= display_x_digit(7 downto 4);
           
       when "100" =>
            seg7_an <= "11101111";
            case switch is
                when "00" =>
                    display_digit <= display_ad_digit(3 downto 0);
                when "01" =>
                    display_digit <= display_x_data(3 downto 0);
                when "10" =>
                    display_digit <= display_y_data(3 downto 0);
                when "11" =>
                    display_digit <= display_z_data(3 downto 0);
                when others => null;
            end case;
       when "101" =>
           seg7_an <= "11011111";
           case switch is
                when "00" =>
                    display_digit <= display_ad_digit(7 downto 4);
                when "01" =>
                    display_digit <= display_x_data(7 downto 4);
                when "10" =>
                    display_digit <= display_y_data(7 downto 4);
                when "11" =>
                    display_digit <= display_z_data(7 downto 4);
                when others => null;
            end case;
       when "110" =>
           seg7_an <= "10111111";
           case switch is
                when "00" =>
                    display_digit <= display_1d_digit(3 downto 0);
                when "01" =>
                    display_digit <= (others => '0');
                when "10" =>
                    display_digit <= (others => '0');
                when "11" =>
                    display_digit <= (others => '0');
                when others => null;
            end case;
       when "111" =>
           seg7_an <= "01111111";
           case switch is
                when "00" =>
                    display_digit <= display_1d_digit(7 downto 4);
                when "01" =>
                    display_digit <= (others => '0');
                when "10" =>
                    display_digit <= (others => '0');
                when "11" =>
                    display_digit <= (others => '0');
                when others => null;
            end case;
       when others =>
           seg7_an <= "11111111";
           display_digit <= (others=>'0');
       end case;
    end process; 

  -- Seg7 decoder compenment take input digit based on X and Y coordinates 
  -- and display it on the 7-segment display                
  seg7_decode: seg7_hex PORT MAP (display_digit, seg7_cat);        

end behavior;
