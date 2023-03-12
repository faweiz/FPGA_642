----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/02/23 22:43:57
-- Design Name: 
-- Module Name: SwitchDebouncer - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SwitchDebouncer is
  port (clk       : in  std_logic;
        reset     : in  std_logic;
        switchIn  : in  std_logic;
        switchOut : out std_logic);
end SwitchDebouncer;

architecture Behavioral of SwitchDebouncer is
    signal detected	: std_logic;
    constant out_count_max	: integer := 20;
    signal sync : std_logic_vector(1 downto 0);
    signal counter : integer range 0 to out_count_max;
begin
  process(clk)
  -- 2000Hz = 500 us * 20 plus = 10ms 
  -- Filter bounces for 10ms, anything shorter than 10ms is ingored and switch pressed longer is detected.
  constant detected_counter_max : integer := (100000000 / (2*2000)) - 1;
  variable counter : integer range 0 to detected_counter_max;
  begin
      if (rising_edge(clk)) then
        if (reset='1') then
          detected	<= '0';
          counter	:= 0;
        else
          if (counter = detected_counter_max) then
            counter	:= 0;
            detected	<= '1';
          else
            detected	<= '0';
            counter	:= counter + 1;
          end if;
        end if;
      end if;
  end process;
  process(clk)
  begin
    if (clk'event and clk='1') then
      if (reset='1') then
        sync <= (others => '0');
        counter <= 0;
        switchOut <= '0';
      else
        sync <= sync(0) & switchIn;
        if (sync(1)='0') then      -- Switch not pressed
          counter <= 0;
          switchOut <= '0';
        elsif(detected = '1') then   -- Switch pressed
          if (counter = out_count_max) then
            switchOut <= '1';
          else
            counter <= counter + 1;
          end if;
        end if;
      end if;
    end if;
  end process;
end Behavioral;