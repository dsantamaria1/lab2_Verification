library verilog;
use verilog.vl_types.all;
entity generic_sram_byte_en is
    generic(
        DATA_WIDTH      : integer := 128;
        ADDRESS_WIDTH   : integer := 7
    );
    port(
        i_clk           : in     vl_logic;
        i_write_data    : in     vl_logic_vector;
        i_write_enable  : in     vl_logic;
        i_address       : in     vl_logic_vector;
        i_byte_enable   : in     vl_logic_vector;
        o_read_data     : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDRESS_WIDTH : constant is 1;
end generic_sram_byte_en;
