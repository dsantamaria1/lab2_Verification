library verilog;
use verilog.vl_types.all;
entity eth_maccontrol is
    generic(
        Tp              : integer := 1
    );
    port(
        MTxClk          : in     vl_logic;
        MRxClk          : in     vl_logic;
        TxReset         : in     vl_logic;
        RxReset         : in     vl_logic;
        TPauseRq        : in     vl_logic;
        TxDataIn        : in     vl_logic_vector(7 downto 0);
        TxStartFrmIn    : in     vl_logic;
        TxUsedDataIn    : in     vl_logic;
        TxEndFrmIn      : in     vl_logic;
        TxDoneIn        : in     vl_logic;
        TxAbortIn       : in     vl_logic;
        RxData          : in     vl_logic_vector(7 downto 0);
        RxValid         : in     vl_logic;
        RxStartFrm      : in     vl_logic;
        RxEndFrm        : in     vl_logic;
        ReceiveEnd      : in     vl_logic;
        ReceivedPacketGood: in     vl_logic;
        ReceivedLengthOK: in     vl_logic;
        TxFlow          : in     vl_logic;
        RxFlow          : in     vl_logic;
        DlyCrcEn        : in     vl_logic;
        TxPauseTV       : in     vl_logic_vector(15 downto 0);
        MAC             : in     vl_logic_vector(47 downto 0);
        PadIn           : in     vl_logic;
        PadOut          : out    vl_logic;
        CrcEnIn         : in     vl_logic;
        CrcEnOut        : out    vl_logic;
        TxDataOut       : out    vl_logic_vector(7 downto 0);
        TxStartFrmOut   : out    vl_logic;
        TxEndFrmOut     : out    vl_logic;
        TxDoneOut       : out    vl_logic;
        TxAbortOut      : out    vl_logic;
        TxUsedDataOut   : out    vl_logic;
        WillSendControlFrame: out    vl_logic;
        TxCtrlEndFrm    : out    vl_logic;
        ReceivedPauseFrm: out    vl_logic;
        ControlFrmAddressOK: out    vl_logic;
        SetPauseTimer   : out    vl_logic;
        r_PassAll       : in     vl_logic;
        RxStatusWriteLatched_sync2: in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_maccontrol;
