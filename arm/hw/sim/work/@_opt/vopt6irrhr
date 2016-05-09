library verilog;
use verilog.vl_types.all;
entity eth_rxcounters is
    generic(
        Tp              : integer := 1
    );
    port(
        MRxClk          : in     vl_logic;
        Reset           : in     vl_logic;
        MRxDV           : in     vl_logic;
        StateIdle       : in     vl_logic;
        StateSFD        : in     vl_logic;
        StateData       : in     vl_logic_vector(1 downto 0);
        StateDrop       : in     vl_logic;
        StatePreamble   : in     vl_logic;
        MRxDEqD         : in     vl_logic;
        DlyCrcEn        : in     vl_logic;
        DlyCrcCnt       : out    vl_logic_vector(3 downto 0);
        Transmitting    : in     vl_logic;
        MaxFL           : in     vl_logic_vector(15 downto 0);
        r_IFG           : in     vl_logic;
        HugEn           : in     vl_logic;
        IFGCounterEq24  : out    vl_logic;
        ByteCntEq0      : out    vl_logic;
        ByteCntEq1      : out    vl_logic;
        ByteCntEq2      : out    vl_logic;
        ByteCntEq3      : out    vl_logic;
        ByteCntEq4      : out    vl_logic;
        ByteCntEq5      : out    vl_logic;
        ByteCntEq6      : out    vl_logic;
        ByteCntEq7      : out    vl_logic;
        ByteCntGreat2   : out    vl_logic;
        ByteCntSmall7   : out    vl_logic;
        ByteCntMaxFrame : out    vl_logic;
        ByteCntOut      : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_rxcounters;
