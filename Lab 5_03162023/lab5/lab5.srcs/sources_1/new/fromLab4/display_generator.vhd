----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/02/23 16:19:23
-- Design Name: 
-- Module Name: display_generator - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- the vga_controller entity declaration
-- read above for behavioral description and port definitions.

Entity display_generator IS
	Port (sclk     : IN std_logic;
	      pxl_clk     : IN std_logic;
		  rst		  : IN std_logic;
		  up          : IN std_logic;
		  down        : IN std_logic;
		  left        : IN std_logic;
		  right       : IN std_logic;
		  hcount      : IN std_logic_vector(10 downto 0);
		  vcount      : IN std_logic_vector(10 downto 0);
		  vgaRed_o    : OUT std_logic_vector(3 downto 0);
		  vgaGreen_o  : OUT std_logic_vector(3 downto 0);
		  vgaBlue_o   : OUT std_logic_vector(3 downto 0);
		  active	  : IN std_logic;
		  display_x_digit: BUFFER std_logic_vector(7 downto 0);
		  display_y_digit: BUFFER std_logic_vector(7 downto 0));
end display_generator;
		  
architecture behavior OF display_generator is
  -- Button Debounce compenment from seg7_hex entity
  component SwitchDebouncer
  port(clk        : in std_logic;
       reset      : in std_logic;
       switchIn   : in std_logic;
       switchOut  : out std_logic);
  end component;
  signal bu       : std_logic := '0';
  signal bd       : std_logic := '0';
  signal bl       : std_logic := '0';
  signal br       : std_logic := '0';
  signal bu_d 	  : std_logic;
  signal bd_d	  : std_logic;
  signal bl_d	  : std_logic;
  signal br_d	  : std_logic;
  -- Colorbar red, greeen and blue signals
  signal bg_red   : std_logic_vector(3 downto 0);
  signal bg_blue  : std_logic_vector(3 downto 0);
  signal bg_green : std_logic_vector(3 downto 0);
  -- Checkboard Pattern VGA R, G and B signals
  signal Pattern_Red   : std_logic_vector(3 downto 0);
  signal Pattern_Green : std_logic_vector(3 downto 0);
  signal Pattern_Blue  : std_logic_vector(3 downto 0);
  
  --Moving Box constants
  constant FRAME_WIDTH : natural := 640; 
  constant FRAME_HEIGHT: natural := 480; 
  constant BOX_WIDTH   : natural := 32;
  constant BOX_X_MAX : natural := (FRAME_WIDTH - BOX_WIDTH);
  constant BOX_Y_MAX : natural := (FRAME_HEIGHT - BOX_WIDTH);
  constant BOX_X_MIN : natural := 0;
  constant BOX_Y_MIN : natural := 0;
  signal box_x_reg   : integer range -FRAME_WIDTH to FRAME_WIDTH:= 0;
  signal box_x_dir   : integer := 1;
  signal box_y_reg   : integer range -FRAME_HEIGHT to FRAME_HEIGHT:= 0;
  signal box_y_dir   : integer := 1;
  signal update_box  : std_logic;

begin
  ---------------------------------------------------------
  -- Generate checkerboard pattern background
  ---------------------------------------------------------
  process(hcount, vcount)
  begin  
    if(not(update_box = '1')) then
      Pattern_Red <= (others => '0');
      if((hcount(5) = '0') xor (vcount(5) = '1')) then
        Pattern_Green <= (others => '1');
      else
        Pattern_Green <= (others => '0');
      end if;
      Pattern_Blue <= not Pattern_Green;
    else
      Pattern_Red <= (others => '1');
      Pattern_Green <= (others => '0');
      Pattern_Blue <= (others => '0');
    end if;
  end process;
  
  process(pxl_clk, rst)
   begin
       if(rst = '1') then
           bg_red <= (others => '0');
           bg_green <= (others => '0');
           bg_blue<= (others => '0');
       elsif(rising_edge(pxl_clk)) then
           bg_red <= Pattern_Red;
           bg_green <= Pattern_Green;
           bg_blue <= Pattern_Blue;           
       end if;
   end process;
  ------------------------------------------------------------
  -- Turn Off VGA RBG Signals if outside of the active screen
  -- Make a 4-bit AND logic with the R, G and B signals
  ------------------------------------------------------------  
  vgaRed_o   <= (active & active & active & active) and bg_red;
  vgaGreen_o <= (active & active & active & active) and bg_green;
  vgaBlue_o  <= (active & active & active & active) and bg_blue;
  ------------------------------------------------------
  -------         Push Button Debounce            ------
  ------------------------------------------------------
  BTN_U : SwitchDebouncer PORT MAP(clk => sclk, reset => rst,
                                switchIn => up, switchOut => bu);
  BTN_D : SwitchDebouncer PORT MAP(clk => sclk, reset => rst,
                                switchIn => down, switchOut => bd);
  BTN_L : SwitchDebouncer PORT MAP(clk => sclk, reset => rst,
                                switchIn => left, switchOut => bl);
  BTN_R : SwitchDebouncer PORT MAP(clk => sclk, reset => rst,
                                switchIn => right, switchOut => br);                        
  ------------------------------------------------------
  -------         MOVING BOX LOGIC                ------
  ------------------------------------------------------                             
  process (sclk, rst)
  begin  
    if(rst = '1') then
        box_x_reg <= 0;
        box_y_reg <= 0;
        bu_d		<= '0';
        bd_d		<= '0';
        bl_d		<= '0';
        br_d		<= '0';
        display_x_digit <= (others => '0');
        display_y_digit <= (others => '0');
    elsif (rising_edge(sclk)) then
        br_d <= br;
        bl_d <= bl;
        bd_d <= bd;
        bu_d <= bu;
        if( br = '1' and br_d = '0') then
            box_x_reg <= box_x_reg + BOX_WIDTH ; -- right
            box_x_dir <= 1;
            display_x_digit <= display_x_digit + 1;
        elsif (bl = '1' and bl_d='0') then
            box_x_reg <= box_x_reg - BOX_WIDTH; -- left
            box_x_dir <= 0;
            display_x_digit <= display_x_digit - 1;
        elsif (bd = '1' and bd_d='0') then
            box_y_reg <= box_y_reg + BOX_WIDTH; -- down
            box_y_dir <= 1;
            display_y_digit <= display_y_digit + 1;
        elsif (bu = '1' and bu_d='0') then
            box_y_reg <= box_y_reg - BOX_WIDTH; -- up
            box_y_dir <= 0;
            display_y_digit <= display_y_digit - 1;
        end if;
        -- Wrap around the display and move appropriately at the edges
        if((box_x_dir = 1) and (box_x_reg > BOX_X_MAX)) then
            box_x_reg <= BOX_X_MIN;
            display_x_digit <= x"00";
        elsif((box_x_dir = 0) and (box_x_reg < BOX_X_MIN)) then
            box_x_reg <= BOX_X_MAX;
            display_x_digit <= x"13";
        end if;
        if((box_y_dir = 1) and (box_y_reg > BOX_Y_MAX)) then
            box_y_reg <= BOX_Y_MIN;
            display_y_digit <= x"00";
        elsif((box_y_dir = 0) and (box_y_reg < BOX_Y_MIN)) then
            box_y_reg <= BOX_Y_MAX;
            display_y_digit <= x"0E";
        end if;
    end if;
  end process;
            
  update_box <= '1' when (((hcount > (box_x_reg - 1 )) and (hcount < (box_x_reg + BOX_WIDTH ))) and
                            ((vcount > (box_y_reg - 1)) and (vcount < (box_y_reg + BOX_WIDTH))))  else
                '0';       
   
End behavior;
		  