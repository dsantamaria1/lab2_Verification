library verilog;
use verilog.vl_types.all;
entity eth_outputcontrol is
    generic(
        Tp              : integer := 1
    );
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        InProgress      : in     vl_logic;
        ShiftedBit      : in     vl_logic;
        BitCounter      : in     vl_logic_vector(6 downto 0);
        WriteOp         : in     vl_logic;
        NoPre           : in     vl_logic;
        MdcEn_n         : in     vl_logic;
        Mdo             : out    vl_logic;
        MdoEn           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_outputcontrol;
