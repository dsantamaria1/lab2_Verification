library verilog;
use verilog.vl_types.all;
entity eth_shiftreg is
    generic(
        Tp              : integer := 1
    );
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        MdcEn_n         : in     vl_logic;
        Mdi             : in     vl_logic;
        Fiad            : in     vl_logic_vector(4 downto 0);
        Rgad            : in     vl_logic_vector(4 downto 0);
        CtrlData        : in     vl_logic_vector(15 downto 0);
        WriteOp         : in     vl_logic;
        ByteSelect      : in     vl_logic_vector(3 downto 0);
        LatchByte       : in     vl_logic_vector(1 downto 0);
        ShiftedBit      : out    vl_logic;
        Prsd            : out    vl_logic_vector(15 downto 0);
        LinkFail        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_shiftreg;
