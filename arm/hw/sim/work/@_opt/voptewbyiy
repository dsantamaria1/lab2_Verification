library verilog;
use verilog.vl_types.all;
entity eth_receivecontrol is
    generic(
        Tp              : integer := 1
    );
    port(
        MTxClk          : in     vl_logic;
        MRxClk          : in     vl_logic;
        TxReset         : in     vl_logic;
        RxReset         : in     vl_logic;
        RxData          : in     vl_logic_vector(7 downto 0);
        RxValid         : in     vl_logic;
        RxStartFrm      : in     vl_logic;
        RxEndFrm        : in     vl_logic;
        RxFlow          : in     vl_logic;
        ReceiveEnd      : in     vl_logic;
        MAC             : in     vl_logic_vector(47 downto 0);
        DlyCrcEn        : in     vl_logic;
        TxDoneIn        : in     vl_logic;
        TxAbortIn       : in     vl_logic;
        TxStartFrmOut   : in     vl_logic;
        ReceivedLengthOK: in     vl_logic;
        ReceivedPacketGood: in     vl_logic;
        TxUsedDataOutDetected: in     vl_logic;
        Pause           : out    vl_logic;
        ReceivedPauseFrm: out    vl_logic;
        AddressOK       : out    vl_logic;
        RxStatusWriteLatched_sync2: in     vl_logic;
        r_PassAll       : in     vl_logic;
        SetPauseTimer   : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_receivecontrol;
