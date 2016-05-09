library verilog;
use verilog.vl_types.all;
entity a25_coprocessor is
    port(
        quick_n_reset   : in     vl_logic;
        i_clk           : in     vl_logic;
        i_access_stall  : in     vl_logic;
        i_copro_opcode1 : in     vl_logic_vector(2 downto 0);
        i_copro_opcode2 : in     vl_logic_vector(2 downto 0);
        i_copro_crn     : in     vl_logic_vector(3 downto 0);
        i_copro_crm     : in     vl_logic_vector(3 downto 0);
        i_copro_num     : in     vl_logic_vector(3 downto 0);
        i_copro_operation: in     vl_logic_vector(1 downto 0);
        i_copro_write_data: in     vl_logic_vector(31 downto 0);
        i_fault         : in     vl_logic;
        i_fault_status  : in     vl_logic_vector(7 downto 0);
        i_fault_address : in     vl_logic_vector(31 downto 0);
        o_copro_read_data: out    vl_logic_vector(31 downto 0);
        o_cache_enable  : out    vl_logic;
        o_cache_flush   : out    vl_logic;
        o_cacheable_area: out    vl_logic_vector(31 downto 0)
    );
end a25_coprocessor;
