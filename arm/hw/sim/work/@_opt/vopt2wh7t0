library verilog;
use verilog.vl_types.all;
entity a25_alu is
    port(
        i_a_in          : in     vl_logic_vector(31 downto 0);
        i_b_in          : in     vl_logic_vector(31 downto 0);
        i_barrel_shift_carry: in     vl_logic;
        i_status_bits_carry: in     vl_logic;
        i_function      : in     vl_logic_vector(8 downto 0);
        o_out           : out    vl_logic_vector(31 downto 0);
        o_flags         : out    vl_logic_vector(3 downto 0)
    );
end a25_alu;
