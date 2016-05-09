library verilog;
use verilog.vl_types.all;
entity a25_wishbone is
    port(
        quick_n_reset   : in     vl_logic;
        i_clk           : in     vl_logic;
        i_icache_req    : in     vl_logic;
        i_icache_qword  : in     vl_logic;
        i_icache_address: in     vl_logic_vector(31 downto 0);
        o_icache_read_data: out    vl_logic_vector(31 downto 0);
        o_icache_ready  : out    vl_logic;
        i_exclusive     : in     vl_logic;
        i_dcache_cached_req: in     vl_logic;
        i_dcache_uncached_req: in     vl_logic;
        i_dcache_qword  : in     vl_logic;
        i_dcache_write  : in     vl_logic;
        i_dcache_write_data: in     vl_logic_vector(31 downto 0);
        i_dcache_byte_enable: in     vl_logic_vector(3 downto 0);
        i_dcache_address: in     vl_logic_vector(31 downto 0);
        o_dcache_read_data: out    vl_logic_vector(31 downto 0);
        o_dcache_cached_ready: out    vl_logic;
        o_dcache_uncached_ready: out    vl_logic;
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
end a25_wishbone;
