----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/02/23 16:18:13
-- Design Name: 
-- Module Name: vga_controller - Behavioral
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
entity vga_controller is
port(
   rst         : in std_logic;
   pixel_clk   : in std_logic;
   HS_O        : out std_logic;
   VS_O        : out std_logic;
   hcount      : out std_logic_vector(10 downto 0);
   vcount      : out std_logic_vector(10 downto 0);
   active      : out std_logic
);
end vga_controller;

architecture Behavioral of vga_controller is

------------------------------------------------------------------------
-- CONSTANTS
------------------------------------------------------------------------
  --***640x480@60Hz (25MHz) ***--
  constant HLINES : natural := 640; 
  constant VLINES : natural := 480; 
  
  constant HFP    : natural := 16;  --H front porch width (pixels)
  constant HSP    : natural := 96;  --H sync pulse width (pixels)
  constant HMAX   : natural := 800; --H total period (pixels)
  
  constant VFP    : natural := 10;  --V front porch width (lines)
  constant VSP    : natural := 2;   --V sync pulse width (lines)
  constant VMAX   : natural := 521; --V total period (lines)
  
  constant HPOL   : std_logic := '1'; -- polarity of the horizontal synch pulse
  constant VPOL   : std_logic := '1'; -- polarity of the vertical synch pulse

------------------------------------------------------------------------
-- SIGNALS
------------------------------------------------------------------------
  -- horizontal and vertical counters
  signal hcounter : std_logic_vector(10 downto 0) := (others => '0');
  signal vcounter : std_logic_vector(10 downto 0) := (others => '0');
  -- active when inside visible screen area.
  signal video_enable: std_logic;
begin
   -- output horizontal and vertical counters
   hcount <= hcounter;
   vcount <= vcounter;
   -- active when inside of screen visible area
   active <= video_enable;
   -- increment horizontal counter at pixel_clk rate
   -- until HMAX is reached, then reset and keep counting
   h_count: process(pixel_clk)
   begin
      if(rising_edge(pixel_clk)) then
        if(hcounter = (HMAX - 1)) then
            hcounter <= (others => '0');
         else
            hcounter <= hcounter + 1;
         end if;
      end if;
   end process h_count;

   -- increment vertical counter when one line is finished
   -- (horizontal counter reached HMAX)
   -- until VMAX is reached, then reset and keep counting
   v_count: process(pixel_clk)
   begin
      if(rising_edge(pixel_clk)) then
        if((hcounter = (HMAX - 1)) and vcounter = (VMAX - 1)) then
               vcounter <= (others => '0');
        elsif(hcounter = (HMAX - 1)) then 
               vcounter <= vcounter + 1;
        end if;
      end if;
   end process v_count;

   -- generate horizontal synch pulse
   -- when horizontal counter is between where the
   -- front porch ends and the synch pulse ends.
   -- The HS is active (with polarity HPOL) for a total of 96 pixels.
   do_hs: process(pixel_clk)
   begin
      if(rising_edge(pixel_clk)) then
         if(hcounter >= (HFP + HLINES - 1)) and (hcounter < (HFP + HLINES + HSP - 1)) then
            HS_O <= HPOL;
         else
            HS_O <= not HPOL;
         end if;
      end if;
   end process do_hs;

   -- generate vertical synch pulse
   -- when vertical counter is between where the
   -- front porch ends and the synch pulse ends.
   -- The VS is active (with polarity VPOL) for a total of 2 video lines
   -- = 2*HMAX = 1600 pixels.
   do_vs: process(pixel_clk)
   begin
      if(rising_edge(pixel_clk)) then
         if(vcounter >= (VFP + VLINES - 1)) and (vcounter < (VFP + VLINES + VSP - 1)) then
            VS_O <= VPOL;
         else
            VS_O <= not VPOL;
         end if;
      end if;
   end process do_vs;
   
   -- enable video output when pixel is in visible area
   video_enable <= '1' when (hcounter < HLINES and vcounter < VLINES) else '0';

end Behavioral;
