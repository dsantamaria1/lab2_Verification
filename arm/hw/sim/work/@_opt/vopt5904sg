library verilog;
use verilog.vl_types.all;
entity eth_txstatem is
    generic(
        Tp              : integer := 1
    );
    port(
        MTxClk          : in     vl_logic;
        Reset           : in     vl_logic;
        ExcessiveDefer  : in     vl_logic;
        CarrierSense    : in     vl_logic;
        NibCnt          : in     vl_logic_vector(6 downto 0);
        IPGT            : in     vl_logic_vector(6 downto 0);
        IPGR1           : in     vl_logic_vector(6 downto 0);
        IPGR2           : in     vl_logic_vector(6 downto 0);
        FullD           : in     vl_logic;
        TxStartFrm      : in     vl_logic;
        TxEndFrm        : in     vl_logic;
        TxUnderRun      : in     vl_logic;
        Collision       : in     vl_logic;
        UnderRun        : in     vl_logic;
        StartTxDone     : in     vl_logic;
        TooBig          : in     vl_logic;
        NibCntEq7       : in     vl_logic;
        NibCntEq15      : in     vl_logic;
        MaxFrame        : in     vl_logic;
        Pad             : in     vl_logic;
        CrcEn           : in     vl_logic;
        NibbleMinFl     : in     vl_logic;
        RandomEq0       : in     vl_logic;
        ColWindow       : in     vl_logic;
        RetryMax        : in     vl_logic;
        NoBckof         : in     vl_logic;
        RandomEqByteCnt : in     vl_logic;
        StateIdle       : out    vl_logic;
        StateIPG        : out    vl_logic;
        StatePreamble   : out    vl_logic;
        StateData       : out    vl_logic_vector(1 downto 0);
        StatePAD        : out    vl_logic;
        StateFCS        : out    vl_logic;
        StateJam        : out    vl_logic;
        StateJam_q      : out    vl_logic;
        StateBackOff    : out    vl_logic;
        StateDefer      : out    vl_logic;
        StartFCS        : out    vl_logic;
        StartJam        : out    vl_logic;
        StartBackoff    : out    vl_logic;
        StartDefer      : out    vl_logic;
        DeferIndication : out    vl_logic;
        StartPreamble   : out    vl_logic;
        StartData       : out    vl_logic_vector(1 downto 0);
        StartIPG        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_txstatem;
