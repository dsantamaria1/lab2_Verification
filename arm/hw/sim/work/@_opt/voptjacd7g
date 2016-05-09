library verilog;
use verilog.vl_types.all;
entity a25_fetch is
    port(
        quick_n_reset   : in     vl_logic;
        i_clk           : in     vl_logic;
        i_mem_stall     : in     vl_logic;
        i_conflict      : in     vl_logic;
        o_fetch_stall   : out    vl_logic;
        i_system_rdy    : in     vl_logic;
        i_iaddress      : in     vl_logic_vector(31 downto 0);
        i_iaddress_valid: in     vl_logic;
        i_iaddress_nxt  : in     vl_logic_vector(31 downto 0);
        o_fetch_instruction: out    vl_logic_vector(31 downto 0);
        i_cache_enable  : in     vl_logic;
        i_cache_flush   : in     vl_logic;
        i_cacheable_area: in     vl_logic_vector(31 downto 0);
        o_wb_req        : out    vl_logic;
        o_wb_qword      : out    vl_logic;
        o_wb_address    : out    vl_logic_vector(31 downto 0);
        i_wb_read_data  : in     vl_logic_vector(31 downto 0);
        i_wb_ready      : in     vl_logic
    );
end a25_fetch;
