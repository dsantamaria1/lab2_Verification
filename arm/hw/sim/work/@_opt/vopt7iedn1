library verilog;
use verilog.vl_types.all;
entity eth_txethmac is
    generic(
        Tp              : integer := 1
    );
    port(
        MTxClk          : in     vl_logic;
        Reset           : in     vl_logic;
        TxStartFrm      : in     vl_logic;
        TxEndFrm        : in     vl_logic;
        TxUnderRun      : in     vl_logic;
        TxData          : in     vl_logic_vector(7 downto 0);
        CarrierSense    : in     vl_logic;
        Collision       : in     vl_logic;
        Pad             : in     vl_logic;
        CrcEn           : in     vl_logic;
        FullD           : in     vl_logic;
        HugEn           : in     vl_logic;
        DlyCrcEn        : in     vl_logic;
        MinFL           : in     vl_logic_vector(15 downto 0);
        MaxFL           : in     vl_logic_vector(15 downto 0);
        IPGT            : in     vl_logic_vector(6 downto 0);
        IPGR1           : in     vl_logic_vector(6 downto 0);
        IPGR2           : in     vl_logic_vector(6 downto 0);
        CollValid       : in     vl_logic_vector(5 downto 0);
        MaxRet          : in     vl_logic_vector(3 downto 0);
        NoBckof         : in     vl_logic;
        ExDfrEn         : in     vl_logic;
        MTxD            : out    vl_logic_vector(3 downto 0);
        MTxEn           : out    vl_logic;
        MTxErr          : out    vl_logic;
        TxDone          : out    vl_logic;
        TxRetry         : out    vl_logic;
        TxAbort         : out    vl_logic;
        TxUsedData      : out    vl_logic;
        WillTransmit    : out    vl_logic;
        ResetCollision  : out    vl_logic;
        RetryCnt        : out    vl_logic_vector(3 downto 0);
        StartTxDone     : out    vl_logic;
        StartTxAbort    : out    vl_logic;
        MaxCollisionOccured: out    vl_logic;
        LateCollision   : out    vl_logic;
        DeferIndication : out    vl_logic;
        StatePreamble   : out    vl_logic;
        StateData       : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_txethmac;
