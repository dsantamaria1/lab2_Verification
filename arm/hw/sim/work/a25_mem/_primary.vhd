library verilog;
use verilog.vl_types.all;
entity a25_mem is
    port(
        quick_n_reset   : in     vl_logic;
        i_clk           : in     vl_logic;
        i_fetch_stall   : in     vl_logic;
        o_mem_stall     : out    vl_logic;
        i_daddress      : in     vl_logic_vector(31 downto 0);
        i_daddress_valid: in     vl_logic;
        i_daddress_nxt  : in     vl_logic_vector(31 downto 0);
        i_write_data    : in     vl_logic_vector(31 downto 0);
        i_write_enable  : in     vl_logic;
        i_exclusive     : in     vl_logic;
        i_byte_enable   : in     vl_logic_vector(3 downto 0);
        i_exec_load_rd  : in     vl_logic_vector(7 downto 0);
        i_cache_enable  : in     vl_logic;
        i_cache_flush   : in     vl_logic;
        i_cacheable_area: in     vl_logic_vector(31 downto 0);
        o_mem_read_data : out    vl_logic_vector(31 downto 0);
        o_mem_read_data_valid: out    vl_logic;
        o_mem_load_rd   : out    vl_logic_vector(9 downto 0);
        o_wb_cached_req : out    vl_logic;
        o_wb_uncached_req: out    vl_logic;
        o_wb_qword      : out    vl_logic;
        o_wb_write      : out    vl_logic;
        o_wb_byte_enable: out    vl_logic_vector(3 downto 0);
        o_wb_write_data : out    vl_logic_vector(31 downto 0);
        o_wb_address    : out    vl_logic_vector(31 downto 0);
        i_wb_read_data  : in     vl_logic_vector(31 downto 0);
        i_wb_cached_ready: in     vl_logic;
        i_wb_uncached_ready: in     vl_logic
    );
end a25_mem;
