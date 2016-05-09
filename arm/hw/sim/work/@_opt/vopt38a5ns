library verilog;
use verilog.vl_types.all;
entity eth_rxstatem is
    generic(
        Tp              : integer := 1
    );
    port(
        MRxClk          : in     vl_logic;
        Reset           : in     vl_logic;
        MRxDV           : in     vl_logic;
        ByteCntEq0      : in     vl_logic;
        ByteCntGreat2   : in     vl_logic;
        Transmitting    : in     vl_logic;
        MRxDEq5         : in     vl_logic;
        MRxDEqD         : in     vl_logic;
        IFGCounterEq24  : in     vl_logic;
        ByteCntMaxFrame : in     vl_logic;
        StateData       : out    vl_logic_vector(1 downto 0);
        StateIdle       : out    vl_logic;
        StatePreamble   : out    vl_logic;
        StateSFD        : out    vl_logic;
        StateDrop       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_rxstatem;
