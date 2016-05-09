library verilog;
use verilog.vl_types.all;
entity eth_fifo is
    generic(
        DATA_WIDTH      : integer := 32;
        DEPTH           : integer := 8;
        CNT_WIDTH       : integer := 4;
        Tp              : integer := 1
    );
    port(
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        write           : in     vl_logic;
        read            : in     vl_logic;
        clear           : in     vl_logic;
        almost_full     : out    vl_logic;
        full            : out    vl_logic;
        almost_empty    : out    vl_logic;
        empty           : out    vl_logic;
        cnt             : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of CNT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_fifo;
