library verilog;
use verilog.vl_types.all;
entity eth_registers is
    generic(
        Tp              : integer := 1
    );
    port(
        DataIn          : in     vl_logic_vector(31 downto 0);
        Address         : in     vl_logic_vector(7 downto 0);
        Rw              : in     vl_logic;
        Cs              : in     vl_logic_vector(3 downto 0);
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        DataOut         : out    vl_logic_vector(31 downto 0);
        r_RecSmall      : out    vl_logic;
        r_Pad           : out    vl_logic;
        r_HugEn         : out    vl_logic;
        r_CrcEn         : out    vl_logic;
        r_DlyCrcEn      : out    vl_logic;
        r_FullD         : out    vl_logic;
        r_ExDfrEn       : out    vl_logic;
        r_NoBckof       : out    vl_logic;
        r_LoopBck       : out    vl_logic;
        r_IFG           : out    vl_logic;
        r_Pro           : out    vl_logic;
        r_Iam           : out    vl_logic;
        r_Bro           : out    vl_logic;
        r_NoPre         : out    vl_logic;
        r_TxEn          : out    vl_logic;
        r_RxEn          : out    vl_logic;
        TxB_IRQ         : in     vl_logic;
        TxE_IRQ         : in     vl_logic;
        RxB_IRQ         : in     vl_logic;
        RxE_IRQ         : in     vl_logic;
        Busy_IRQ        : in     vl_logic;
        r_IPGT          : out    vl_logic_vector(6 downto 0);
        r_IPGR1         : out    vl_logic_vector(6 downto 0);
        r_IPGR2         : out    vl_logic_vector(6 downto 0);
        r_MinFL         : out    vl_logic_vector(15 downto 0);
        r_MaxFL         : out    vl_logic_vector(15 downto 0);
        r_MaxRet        : out    vl_logic_vector(3 downto 0);
        r_CollValid     : out    vl_logic_vector(5 downto 0);
        r_TxFlow        : out    vl_logic;
        r_RxFlow        : out    vl_logic;
        r_PassAll       : out    vl_logic;
        r_MiiNoPre      : out    vl_logic;
        r_ClkDiv        : out    vl_logic_vector(7 downto 0);
        r_WCtrlData     : out    vl_logic;
        r_RStat         : out    vl_logic;
        r_ScanStat      : out    vl_logic;
        r_RGAD          : out    vl_logic_vector(4 downto 0);
        r_FIAD          : out    vl_logic_vector(4 downto 0);
        r_CtrlData      : out    vl_logic_vector(15 downto 0);
        NValid_stat     : in     vl_logic;
        Busy_stat       : in     vl_logic;
        LinkFail        : in     vl_logic;
        r_MAC           : out    vl_logic_vector(47 downto 0);
        WCtrlDataStart  : in     vl_logic;
        RStatStart      : in     vl_logic;
        UpdateMIIRX_DATAReg: in     vl_logic;
        Prsd            : in     vl_logic_vector(15 downto 0);
        r_TxBDNum       : out    vl_logic_vector(7 downto 0);
        int_o           : out    vl_logic;
        r_HASH0         : out    vl_logic_vector(31 downto 0);
        r_HASH1         : out    vl_logic_vector(31 downto 0);
        r_TxPauseTV     : out    vl_logic_vector(15 downto 0);
        r_TxPauseRq     : out    vl_logic;
        RstTxPauseRq    : in     vl_logic;
        TxCtrlEndFrm    : in     vl_logic;
        StartTxDone     : in     vl_logic;
        TxClk           : in     vl_logic;
        RxClk           : in     vl_logic;
        SetPauseTimer   : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_registers;