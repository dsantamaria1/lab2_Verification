library verilog;
use verilog.vl_types.all;
entity a25_write_back is
    port(
        quick_n_reset   : in     vl_logic;
        i_clk           : in     vl_logic;
        i_mem_stall     : in     vl_logic;
        i_mem_read_data : in     vl_logic_vector(31 downto 0);
        i_mem_read_data_valid: in     vl_logic;
        i_mem_load_rd   : in     vl_logic_vector(9 downto 0);
        o_wb_read_data  : out    vl_logic_vector(31 downto 0);
        o_wb_read_data_valid: out    vl_logic;
        o_wb_load_rd    : out    vl_logic_vector(9 downto 0);
        i_daddress      : in     vl_logic_vector(31 downto 0);
        i_daddress_valid: in     vl_logic;
        daddress_r      : out    vl_logic_vector(31 downto 0);
        mem_read_data_valid_r: out    vl_logic;
        mem_load_rd_r   : out    vl_logic_vector(9 downto 0)
    );
end a25_write_back;
