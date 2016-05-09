library verilog;
use verilog.vl_types.all;
entity eth_txcounters is
    generic(
        Tp              : integer := 1
    );
    port(
        StatePreamble   : in     vl_logic;
        StateIPG        : in     vl_logic;
        StateData       : in     vl_logic_vector(1 downto 0);
        StatePAD        : in     vl_logic;
        StateFCS        : in     vl_logic;
        StateJam        : in     vl_logic;
        StateBackOff    : in     vl_logic;
        StateDefer      : in     vl_logic;
        StateIdle       : in     vl_logic;
        StartDefer      : in     vl_logic;
        StartIPG        : in     vl_logic;
        StartFCS        : in     vl_logic;
        StartJam        : in     vl_logic;
        StartBackoff    : in     vl_logic;
        TxStartFrm      : in     vl_logic;
        MTxClk          : in     vl_logic;
        Reset           : in     vl_logic;
        MinFL           : in     vl_logic_vector(15 downto 0);
        MaxFL           : in     vl_logic_vector(15 downto 0);
        HugEn           : in     vl_logic;
        ExDfrEn         : in     vl_logic;
        PacketFinished_q: in     vl_logic;
        DlyCrcEn        : in     vl_logic;
        StateSFD        : in     vl_logic;
        ByteCnt         : out    vl_logic_vector(15 downto 0);
        NibCnt          : out    vl_logic_vector(15 downto 0);
        ExcessiveDefer  : out    vl_logic;
        NibCntEq7       : out    vl_logic;
        NibCntEq15      : out    vl_logic;
        MaxFrame        : out    vl_logic;
        NibbleMinFl     : out    vl_logic;
        DlyCrcCnt       : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_txcounters;
