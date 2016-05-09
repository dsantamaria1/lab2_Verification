library verilog;
use verilog.vl_types.all;
entity eth_miim is
    generic(
        Tp              : integer := 1
    );
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Divider         : in     vl_logic_vector(7 downto 0);
        NoPre           : in     vl_logic;
        CtrlData        : in     vl_logic_vector(15 downto 0);
        Rgad            : in     vl_logic_vector(4 downto 0);
        Fiad            : in     vl_logic_vector(4 downto 0);
        WCtrlData       : in     vl_logic;
        RStat           : in     vl_logic;
        ScanStat        : in     vl_logic;
        Mdi             : in     vl_logic;
        Mdo             : out    vl_logic;
        MdoEn           : out    vl_logic;
        Mdc             : out    vl_logic;
        Busy            : out    vl_logic;
        Prsd            : out    vl_logic_vector(15 downto 0);
        LinkFail        : out    vl_logic;
        Nvalid          : out    vl_logic;
        WCtrlDataStart  : out    vl_logic;
        RStatStart      : out    vl_logic;
        UpdateMIIRX_DATAReg: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_miim;
