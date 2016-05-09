library verilog;
use verilog.vl_types.all;
entity a25_icache is
    generic(
        CACHE_LINES     : integer := 256;
        CACHE_WORDS_PER_LINE: integer := 4;
        WAYS            : integer := 4;
        CACHE_ADDR_WIDTH: vl_notype;
        WORD_SEL_WIDTH  : vl_notype;
        TAG_ADDR_WIDTH  : vl_notype;
        TAG_WIDTH       : vl_notype;
        CACHE_LINE_WIDTH: vl_notype;
        TAG_ADDR32_LSB  : vl_notype;
        CACHE_ADDR32_MSB: vl_notype;
        CACHE_ADDR32_LSB: vl_notype;
        WORD_SEL_MSB    : vl_notype;
        WORD_SEL_LSB    : integer := 2
    );
    port(
        i_clk           : in     vl_logic;
        i_core_stall    : in     vl_logic;
        o_stall         : out    vl_logic;
        i_select        : in     vl_logic;
        i_address       : in     vl_logic_vector(31 downto 0);
        i_address_nxt   : in     vl_logic_vector(31 downto 0);
        i_cache_enable  : in     vl_logic;
        i_cache_flush   : in     vl_logic;
        o_read_data     : out    vl_logic_vector(31 downto 0);
        o_wb_req        : out    vl_logic;
        i_wb_read_data  : in     vl_logic_vector(31 downto 0);
        i_wb_ready      : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CACHE_LINES : constant is 1;
    attribute mti_svvh_generic_type of CACHE_WORDS_PER_LINE : constant is 1;
    attribute mti_svvh_generic_type of WAYS : constant is 1;
    attribute mti_svvh_generic_type of CACHE_ADDR_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of WORD_SEL_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of TAG_ADDR_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of TAG_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of CACHE_LINE_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of TAG_ADDR32_LSB : constant is 3;
    attribute mti_svvh_generic_type of CACHE_ADDR32_MSB : constant is 3;
    attribute mti_svvh_generic_type of CACHE_ADDR32_LSB : constant is 3;
    attribute mti_svvh_generic_type of WORD_SEL_MSB : constant is 3;
    attribute mti_svvh_generic_type of WORD_SEL_LSB : constant is 1;
end a25_icache;
