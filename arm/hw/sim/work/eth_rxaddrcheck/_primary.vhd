library verilog;
use verilog.vl_types.all;
entity eth_rxaddrcheck is
    generic(
        Tp              : integer := 1
    );
    port(
        MRxClk          : in     vl_logic;
        Reset           : in     vl_logic;
        RxData          : in     vl_logic_vector(7 downto 0);
        Broadcast       : in     vl_logic;
        r_Bro           : in     vl_logic;
        r_Pro           : in     vl_logic;
        ByteCntEq2      : in     vl_logic;
        ByteCntEq3      : in     vl_logic;
        ByteCntEq4      : in     vl_logic;
        ByteCntEq5      : in     vl_logic;
        ByteCntEq6      : in     vl_logic;
        ByteCntEq7      : in     vl_logic;
        HASH0           : in     vl_logic_vector(31 downto 0);
        HASH1           : in     vl_logic_vector(31 downto 0);
        CrcHash         : in     vl_logic_vector(5 downto 0);
        CrcHashGood     : in     vl_logic;
        StateData       : in     vl_logic_vector(1 downto 0);
        RxEndFrm        : in     vl_logic;
        Multicast       : in     vl_logic;
        MAC             : in     vl_logic_vector(47 downto 0);
        RxAbort         : out    vl_logic;
        AddressMiss     : out    vl_logic;
        PassAll         : in     vl_logic;
        ControlFrmAddressOK: in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_rxaddrcheck;
