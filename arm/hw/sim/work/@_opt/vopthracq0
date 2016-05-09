library verilog;
use verilog.vl_types.all;
entity eth_crc is
    generic(
        Tp              : integer := 1
    );
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Data            : in     vl_logic_vector(3 downto 0);
        Enable          : in     vl_logic;
        Initialize      : in     vl_logic;
        Crc             : out    vl_logic_vector(31 downto 0);
        CrcError        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_crc;
