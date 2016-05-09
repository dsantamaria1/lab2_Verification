library verilog;
use verilog.vl_types.all;
entity eth_random is
    generic(
        Tp              : integer := 1
    );
    port(
        MTxClk          : in     vl_logic;
        Reset           : in     vl_logic;
        StateJam        : in     vl_logic;
        StateJam_q      : in     vl_logic;
        RetryCnt        : in     vl_logic_vector(3 downto 0);
        NibCnt          : in     vl_logic_vector(15 downto 0);
        ByteCnt         : in     vl_logic_vector(9 downto 0);
        RandomEq0       : out    vl_logic;
        RandomEqByteCnt : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_random;
