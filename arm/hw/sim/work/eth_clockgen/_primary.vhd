library verilog;
use verilog.vl_types.all;
entity eth_clockgen is
    generic(
        Tp              : integer := 1
    );
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Divider         : in     vl_logic_vector(7 downto 0);
        MdcEn           : out    vl_logic;
        MdcEn_n         : out    vl_logic;
        Mdc             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_clockgen;
