----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/03/06 14:34:52
-- Design Name: 
-- Module Name: lab5_top - Behavioral
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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab5_top is
    Port(CLK100MHZ 	   : IN std_logic;
		 BTNC 		   : IN std_logic;
		 BTNU 		   : IN std_logic;
		 BTND 		   : IN std_logic;
		 BTNL 		   : IN std_logic;
		 BTNR 		   : IN std_logic;
		 SEG7_CATH     : OUT STD_LOGIC_VECTOR (7 downto 0);
		 SW 		   : IN std_logic_vector (15 downto 0);
		 AN            : OUT std_logic_vector (7 downto 0);
		 VGA_HS 	   : OUT std_logic;
		 VGA_VS 	   : OUT std_logic;
		 VGA_R 	       : OUT std_logic_vector(3 downto 0);
		 VGA_G         : OUT std_logic_vector(3 downto 0);
		 VGA_B  	   : OUT std_logic_vector(3 downto 0);
		 ACL_MISO      : IN   std_logic;
		 ACL_MOSI      : OUT  std_logic;
		 ACL_SCLK      : OUT  std_logic;
		 ACL_CSN       : OUT  std_logic);
end lab5_top;

architecture Behavioral of lab5_top is
    signal clock_sig       : std_logic;
	signal H_count_sig     : std_logic_vector (10 downto 0);
	signal V_count_sig     : std_logic_vector (10 downto 0);
	signal vga_Active      : std_logic;                                       
	signal clk_out         : std_logic;
	signal sclk            : std_logic;
	signal display_x_digit : std_logic_vector(7 downto 0);
	signal display_y_digit : std_logic_vector(7 downto 0);
    signal ad_digit        : std_logic_vector(7 downto 0);
    signal id_digit        : std_logic_vector(7 downto 0);
    signal x_data          : std_logic_vector (7 downto 0);
	signal y_data          : std_logic_vector (7 downto 0);
	signal z_data          : std_logic_vector (7 downto 0);

begin
  -- Clock Divider to Generate 25MHz Clock for VGA 640x480@60Hz    
  process(CLK100MHZ, SW(0))
    variable count: INTEGER RANGE 0 to 100000000 :=0;
  begin
    if(SW(0) = '1') then
          clock_sig <= '0';
    elsif( rising_edge(CLK100MHZ)) then
      count := count + 1;
      if (count = 2) then
        clk_out <= not clk_out;
        count := 0;
      end if;
    end if;
    clock_sig <= clk_out;
  end process;
		
  --VGA controller component
  vga_controller : entity work.vga_controller(Behavioral)
        PORT MAP(rst => SW(0), pixel_clk => clock_sig, HS_O => VGA_HS, VS_O => VGA_VS, 
        hcount => H_count_sig, vcount => V_count_sig, active => vga_Active);
  --Display square and moving box component       
  disp_generator : entity work.display_generator(behavior)
        PORT MAP(sclk => CLK100MHZ, pxl_clk => clock_sig, rst => SW(0), up => BTNU, down => BTND, left => BTNL, right => BTNR, 
                 hcount => H_count_sig, vcount => V_count_sig, vgaRed_o => VGA_R, vgaGreen_o => VGA_G, vgaBlue_o => VGA_B, active => vga_Active,
                 display_x_digit => display_x_digit, display_y_digit => display_y_digit);
                 
  --Accelermeter SPI interface component
  accel_spi_rw:  entity work.accel_spi_rw(behavior)
    GENERIC MAP(clk_freq => 100)
    PORT MAP(clk => CLK100MHZ, reset => SW(0), DATA_X => x_data, DATA_Y => y_data, DATA_Z => z_data, ID_AD => ad_digit, 
             ID_1D => id_digit, CSb => ACL_CSN, mosi => ACL_MOSI, sclk => ACL_SCLK, miso => ACL_MISO);
  --Display 7-segment
   disp_segement : entity work.display_segement(behavior)
   PORT MAP(sclk => CLK100MHZ, rst => SW(0), switch => SW(4 downto 3), seg7_cat => SEG7_CATH, seg7_an => AN,
            display_x_digit => display_x_digit, display_y_digit => display_y_digit, 
            display_ad_digit => ad_digit, display_1d_digit => id_digit,
            display_x_data => x_data, display_y_data => y_data, display_z_data => z_data );        

end Behavioral;
