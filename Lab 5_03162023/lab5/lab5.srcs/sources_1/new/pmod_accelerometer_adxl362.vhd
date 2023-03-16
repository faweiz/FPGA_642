--------------------------------------------------------------------------------
--
--   FileName:         accel_spi_rw.vhd
--   Dependencies:     spi_controller.vhd
--   Design Software:  Quartus Prime Version 17.0.0 Build 595 SJ Lite Edition
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 02/05/2021 Scott Larson
--     Initial Public Release
--   Version 1.1 07/28/2022 Scott Larson
--     Fixed intermittent problem coming out of reset
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity accel_spi_rw is
  GENERIC(
    clk_freq   : INTEGER := 100);                                --system clock frequency in MHz 
  Port( clk            : IN      STD_LOGIC;                      --system clock
        reset          : IN      STD_LOGIC;                      --active high asynchronous reset
        -- Value from accelerometer used for movement and display
        DATA_X         : OUT     STD_LOGIC_VECTOR(7 DOWNTO 0);   --x-axis acceleration data
        DATA_Y         : OUT     STD_LOGIC_VECTOR(7 DOWNTO 0);   --y-axis acceleration data
        DATA_Z         : OUT     STD_LOGIC_VECTOR(7 DOWNTO 0);   --z-axis acceleration data
        ID_AD          : OUT     STD_LOGIC_VECTOR(7 DOWNTO 0);   --Analog Deives ID
        ID_1D          : OUT     STD_LOGIC_VECTOR(7 DOWNTO 0);   --MEMS Device ID
        -- SPI Signals between FPGA and accelermeter
        CSb            : OUT  STD_LOGIC;                         --SPI bus: slave select
        mosi           : OUT     STD_LOGIC;                      --SPI bus: master out, slave in
        sclk           : OUT  STD_LOGIC;                         --SPI bus: serial clock
        miso           : IN      STD_LOGIC);                     --SPI bus: master in, slave out
end accel_spi_rw;

architecture behavior OF accel_spi_rw is
  TYPE machine IS(start, pause, configure, device_id, read_data, output_result); --FMS states
  SIGNAL state              : machine := start;                  --intial state machine to start state
  SIGNAL parameter          : INTEGER RANGE 0 TO 2;                   
  SIGNAL parameter_addr     : STD_LOGIC_VECTOR(7 DOWNTO 0);           
  SIGNAL parameter_data     : STD_LOGIC_VECTOR(7 DOWNTO 0);           
  SIGNAL spi_busy_prev      : STD_LOGIC;                             
  SIGNAL spi_busy           : STD_LOGIC;                            
  SIGNAL spi_ena            : STD_LOGIC;                              
  SIGNAL spi_cont           : STD_LOGIC;                             
  SIGNAL spi_tx_data        : STD_LOGIC_VECTOR(7 DOWNTO 0);           
  SIGNAL spi_rx_data        : STD_LOGIC_VECTOR(7 DOWNTO 0);           
  SIGNAL read_data_value    : STD_LOGIC_VECTOR(7 DOWNTO 0); 
begin
  --instantiate the SPI Master component       
  spi_controller_compoment:  entity work.spi_controller(behavior)
    GENERIC MAP(d_width => 8)
    PORT MAP(clock => clk, reset => reset, enable => spi_ena, cpol => '0', cpha => '0',
          cont => spi_cont, clk_div => clk_freq/2, tx_data => spi_tx_data, miso => miso,
          sclk => sclk, CSb => CSb, mosi => mosi, busy => spi_busy, rx_data => spi_rx_data);

  process(clk)
    variable count       : INTEGER := 0; 
    variable done_read   : INTEGER := 0; -- done reading flag
    variable read_result : INTEGER := 0; -- ready for read result flag
  begin
    if(reset = '1') then              
      spi_busy_prev <= '0';              
      spi_ena <= '0';                    
      spi_cont <= '0';                   
      spi_tx_data <= (others => '0');    
      DATA_X <= (others => '0');          
      DATA_Y <= (others => '0');         
      DATA_Z <= (others => '0');         
      state <= start;                     
    elsif(rising_edge(clk)) then
      case state is                       
        --entry state
        when start =>
          count := 0; 
          done_read := 0;
          read_result := 0;     
          parameter <= 0;  
          state <= pause;                 -- process to pause state
        -- pause state to process between SPI transcations
        when pause =>
          if(spi_busy = '0') then               
            if(count < clk_freq/10) then            
              count := count + 1;                    
              state <= pause;                      
            else                              
              count := 0;                       
              case parameter is                     
                when 0 =>                             
                  parameter <= parameter + 1;            
                  parameter_addr <= x"2D";          -- register address to enable measurement setting
                  parameter_data <= x"02";          -- data to enable measurement
                  state <= configure;                    
                when 1 =>                              
                  case done_read is
                    -- Analog Device ID
                    when 0 =>
                        read_result := 0; 
                        done_read := done_read + 1;
                        parameter_addr <= x"00";
                    -- MEMS Device ID
                    when 1 =>
                        read_result := 1; 
                        done_read := done_read + 1;  
                        parameter_addr <= x"01";
                    -- x-axis data
                    when 2 =>
                        read_result := 2; 
                        done_read := done_read + 1;  
                        parameter_addr <= x"08";
                    -- y-axis data
                    when 3 =>
                        read_result := 3; 
                        done_read := done_read + 1;  
                        parameter_addr <= x"09";
                    -- z-axis data
                    when 4 =>
                        read_result := 4; 
                        done_read := done_read + 1;  
                        parameter_addr <= x"0A";
                    -- deafult reset
                    when others => 
                        read_result := 0; 
                        done_read := 0; 
                  end case;
                  parameter_data <= x"00";          -- Read register has all zeros data type
                  state <= read_data;               -- proceed to read data state
                when others => null;
              END CASE;        
            end if;
          end if;
        -- write to configuration registers  
        when configure =>
          spi_busy_prev <= spi_busy;                    
          if(spi_busy_prev = '1' and spi_busy = '0') then 
            count := count + 1;                             
          end if;
          case count is                                  
            when 0 =>                                       
              if(spi_busy = '0') then                         
                spi_cont <= '1';                               
                spi_ena <= '1';                                 
                spi_tx_data <= x"0A";               -- 0x0A: Write register command                  
              else                                            
                spi_tx_data <= parameter_addr;           
              end if;
            when 1 =>                                     
              spi_tx_data <= parameter_data;                 
            when 2 =>                                       
              spi_cont <= '0';                                
              spi_ena <= '0';                               
              count := 0;                                     
              state <= pause;                                           
            when others => null;
          end case;
       -- read acceleration data registers  
        when read_data =>
          spi_busy_prev <= spi_busy;                        
          if(spi_busy_prev = '1' AND spi_busy = '0') THEN   
            count := count + 1;                            
          end if;          
          case count IS                                     
            when 0 =>                                         
              IF(spi_busy = '0') THEN                          
                spi_cont <= '1';                                
                spi_ena <= '1';                                  
                spi_tx_data <= x"0B";               -- 0x0B: Read register command                      
              ELSE                                              
                spi_tx_data <= parameter_addr;                       
              END IF;
            when 1 =>                                        
              spi_tx_data <= parameter_data;                       
            when 3 =>                                        
              read_data_value <= spi_rx_data;       
            when 4 =>                                        
              spi_cont <= '0';                                  
              spi_ena <= '0';                                   
              count := 0;                                       
              state <= output_result;               -- proceed to output result state       
            when others => null;
          end case;
        --outputs acceleration data
        when output_result =>
            case read_result is
                -- Analog Device ID
                when 0 =>
                    ID_AD <= read_data_value;
                -- MEMS Device ID
                when 1 =>
                    ID_1D <= read_data_value;
                -- x-axis data
                when 2 =>
                    DATA_X <= read_data_value;
                -- y-axis data
                when 3 =>
                    DATA_Y <= read_data_value;
                -- z-axis data
                when 4 =>
                    DATA_Z <= read_data_value;
                when others => 
                    read_data_value <= (others => '0');
            end case;
            state <= pause;                         -- return to pause state
        --default to start state
        when others => 
          state <= start;
      end case;      
    end if;
  end process;
end behavior;
