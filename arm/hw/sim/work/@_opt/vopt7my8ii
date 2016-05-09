library verilog;
use verilog.vl_types.all;
entity a25_core is
    port(
        quick_n_reset   : in     vl_logic;
        i_clk           : in     vl_logic;
        i_irq           : in     vl_logic;
        i_firq          : in     vl_logic;
        i_system_rdy    : in     vl_logic;
        o_wb_adr        : out    vl_logic_vector(31 downto 0);
        o_wb_sel        : out    vl_logic_vector(3 downto 0);
        o_wb_we         : out    vl_logic;
        i_wb_dat        : in     vl_logic_vector(31 downto 0);
        o_wb_dat        : out    vl_logic_vector(31 downto 0);
        o_wb_cyc        : out    vl_logic;
        o_wb_stb        : out    vl_logic;
        i_wb_ack        : in     vl_logic;
        i_wb_err        : in     vl_logic
    );
end a25_core;
