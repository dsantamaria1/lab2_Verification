library verilog;
use verilog.vl_types.all;
entity uart is
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
        o_uart_int      : out    vl_logic;
        i_uart_cts_n    : in     vl_logic;
        o_uart_txd      : out    vl_logic;
        o_uart_rts_n    : out    vl_logic;
        i_uart_rxd      : in     vl_logic
    );
end uart;
