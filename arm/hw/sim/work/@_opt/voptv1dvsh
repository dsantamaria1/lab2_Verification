library verilog;
use verilog.vl_types.all;
entity a25_multiply is
    port(
        quick_n_reset   : in     vl_logic;
        i_clk           : in     vl_logic;
        i_access_stall  : in     vl_logic;
        i_a_in          : in     vl_logic_vector(31 downto 0);
        i_b_in          : in     vl_logic_vector(31 downto 0);
        i_function      : in     vl_logic_vector(1 downto 0);
        i_execute       : in     vl_logic;
        o_out           : out    vl_logic_vector(31 downto 0);
        o_flags         : out    vl_logic_vector(1 downto 0);
        o_done          : out    vl_logic;
        count           : out    vl_logic_vector(5 downto 0);
        product         : out    vl_logic_vector(67 downto 0);
        sum_acc1_carry  : out    vl_logic
    );
end a25_multiply;
