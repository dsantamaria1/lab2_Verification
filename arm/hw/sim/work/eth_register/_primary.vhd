library verilog;
use verilog.vl_types.all;
entity eth_register is
    generic(
        WIDTH           : integer := 8;
        RESET_VALUE     : integer := 0
    );
    port(
        DataIn          : in     vl_logic_vector;
        DataOut         : out    vl_logic_vector;
        Write           : in     vl_logic;
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        SyncReset       : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of RESET_VALUE : constant is 1;
end eth_register;
