library verilog;
use verilog.vl_types.all;
entity eth_transmitcontrol is
    generic(
        Tp              : integer := 1
    );
    port(
        MTxClk          : in     vl_logic;
        TxReset         : in     vl_logic;
        TxUsedDataIn    : in     vl_logic;
        TxUsedDataOut   : in     vl_logic;
        TxDoneIn        : in     vl_logic;
        TxAbortIn       : in     vl_logic;
        TxStartFrmIn    : in     vl_logic;
        TPauseRq        : in     vl_logic;
        TxUsedDataOutDetected: in     vl_logic;
        TxFlow          : in     vl_logic;
        DlyCrcEn        : in     vl_logic;
        TxPauseTV       : in     vl_logic_vector(15 downto 0);
        MAC             : in     vl_logic_vector(47 downto 0);
        TxCtrlStartFrm  : out    vl_logic;
        TxCtrlEndFrm    : out    vl_logic;
        SendingCtrlFrm  : out    vl_logic;
        CtrlMux         : out    vl_logic;
        ControlData     : out    vl_logic_vector(7 downto 0);
        WillSendControlFrame: out    vl_logic;
        BlockTxDone     : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_transmitcontrol;
