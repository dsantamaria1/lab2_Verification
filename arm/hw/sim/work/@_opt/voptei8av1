library verilog;
use verilog.vl_types.all;
entity interrupt_controller is
    port(
        i_clk           : in     vl_logic;
        i_wb_adr        : in     vl_logic_vector(31 downto 0);
        i_wb_sel        : in     vl_logic_vector(3 downto 0);
        i_wb_we         : in     vl_logic;
        o_wb_dat        : out    vl_logic_vector(31 downto 0);
        i_wb_dat        : in     vl_logic_vector(31 downto 0);
        i_wb_cyc        : in     vl_logic;
        i_wb_stb        : in     vl_logic;
        o_wb_ack        : out    vl_logic;
        o_wb_err        : out    vl_logic;
        o_irq           : out    vl_logic;
        o_firq          : out    vl_logic;
        i_uart0_int     : in     vl_logic;
        i_uart1_int     : in     vl_logic;
        i_ethmac_int    : in     vl_logic;
        i_test_reg_irq  : in     vl_logic;
        i_test_reg_firq : in     vl_logic;
        i_tm_timer_int  : in     vl_logic_vector(2 downto 0)
    );
end interrupt_controller;
