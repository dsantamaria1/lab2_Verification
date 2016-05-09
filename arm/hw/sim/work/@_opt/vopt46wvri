library verilog;
use verilog.vl_types.all;
entity eth_rxethmac is
    generic(
        Tp              : integer := 1
    );
    port(
        MRxClk          : in     vl_logic;
        MRxDV           : in     vl_logic;
        MRxD            : in     vl_logic_vector(3 downto 0);
        Reset           : in     vl_logic;
        Transmitting    : in     vl_logic;
        MaxFL           : in     vl_logic_vector(15 downto 0);
        r_IFG           : in     vl_logic;
        HugEn           : in     vl_logic;
        DlyCrcEn        : in     vl_logic;
        RxData          : out    vl_logic_vector(7 downto 0);
        RxValid         : out    vl_logic;
        RxStartFrm      : out    vl_logic;
        RxEndFrm        : out    vl_logic;
        ByteCnt         : out    vl_logic_vector(15 downto 0);
        ByteCntEq0      : out    vl_logic;
        ByteCntGreat2   : out    vl_logic;
        ByteCntMaxFrame : out    vl_logic;
        CrcError        : out    vl_logic;
        StateIdle       : out    vl_logic;
        StatePreamble   : out    vl_logic;
        StateSFD        : out    vl_logic;
        StateData       : out    vl_logic_vector(1 downto 0);
        MAC             : in     vl_logic_vector(47 downto 0);
        r_Pro           : in     vl_logic;
        r_Bro           : in     vl_logic;
        r_HASH0         : in     vl_logic_vector(31 downto 0);
        r_HASH1         : in     vl_logic_vector(31 downto 0);
        RxAbort         : out    vl_logic;
        AddressMiss     : out    vl_logic;
        PassAll         : in     vl_logic;
        ControlFrmAddressOK: in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_rxethmac;
