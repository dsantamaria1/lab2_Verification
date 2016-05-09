library verilog;
use verilog.vl_types.all;
entity wishbone_arbiter is
    port(
        i_wb_clk        : in     vl_logic;
        i_m0_wb_adr     : in     vl_logic_vector(31 downto 0);
        i_m0_wb_sel     : in     vl_logic_vector(3 downto 0);
        i_m0_wb_we      : in     vl_logic;
        o_m0_wb_dat     : out    vl_logic_vector(31 downto 0);
        i_m0_wb_dat     : in     vl_logic_vector(31 downto 0);
        i_m0_wb_cyc     : in     vl_logic;
        i_m0_wb_stb     : in     vl_logic;
        o_m0_wb_ack     : out    vl_logic;
        o_m0_wb_err     : out    vl_logic;
        i_m1_wb_adr     : in     vl_logic_vector(31 downto 0);
        i_m1_wb_sel     : in     vl_logic_vector(3 downto 0);
        i_m1_wb_we      : in     vl_logic;
        o_m1_wb_dat     : out    vl_logic_vector(31 downto 0);
        i_m1_wb_dat     : in     vl_logic_vector(31 downto 0);
        i_m1_wb_cyc     : in     vl_logic;
        i_m1_wb_stb     : in     vl_logic;
        o_m1_wb_ack     : out    vl_logic;
        o_m1_wb_err     : out    vl_logic;
        o_s0_wb_adr     : out    vl_logic_vector(31 downto 0);
        o_s0_wb_sel     : out    vl_logic_vector(3 downto 0);
        o_s0_wb_we      : out    vl_logic;
        i_s0_wb_dat     : in     vl_logic_vector(31 downto 0);
        o_s0_wb_dat     : out    vl_logic_vector(31 downto 0);
        o_s0_wb_cyc     : out    vl_logic;
        o_s0_wb_stb     : out    vl_logic;
        i_s0_wb_ack     : in     vl_logic;
        i_s0_wb_err     : in     vl_logic;
        o_s1_wb_adr     : out    vl_logic_vector(31 downto 0);
        o_s1_wb_sel     : out    vl_logic_vector(3 downto 0);
        o_s1_wb_we      : out    vl_logic;
        i_s1_wb_dat     : in     vl_logic_vector(31 downto 0);
        o_s1_wb_dat     : out    vl_logic_vector(31 downto 0);
        o_s1_wb_cyc     : out    vl_logic;
        o_s1_wb_stb     : out    vl_logic;
        i_s1_wb_ack     : in     vl_logic;
        i_s1_wb_err     : in     vl_logic;
        o_s2_wb_adr     : out    vl_logic_vector(31 downto 0);
        o_s2_wb_sel     : out    vl_logic_vector(3 downto 0);
        o_s2_wb_we      : out    vl_logic;
        i_s2_wb_dat     : in     vl_logic_vector(31 downto 0);
        o_s2_wb_dat     : out    vl_logic_vector(31 downto 0);
        o_s2_wb_cyc     : out    vl_logic;
        o_s2_wb_stb     : out    vl_logic;
        i_s2_wb_ack     : in     vl_logic;
        i_s2_wb_err     : in     vl_logic;
        o_s3_wb_adr     : out    vl_logic_vector(31 downto 0);
        o_s3_wb_sel     : out    vl_logic_vector(3 downto 0);
        o_s3_wb_we      : out    vl_logic;
        i_s3_wb_dat     : in     vl_logic_vector(31 downto 0);
        o_s3_wb_dat     : out    vl_logic_vector(31 downto 0);
        o_s3_wb_cyc     : out    vl_logic;
        o_s3_wb_stb     : out    vl_logic;
        i_s3_wb_ack     : in     vl_logic;
        i_s3_wb_err     : in     vl_logic;
        o_s4_wb_adr     : out    vl_logic_vector(31 downto 0);
        o_s4_wb_sel     : out    vl_logic_vector(3 downto 0);
        o_s4_wb_we      : out    vl_logic;
        i_s4_wb_dat     : in     vl_logic_vector(31 downto 0);
        o_s4_wb_dat     : out    vl_logic_vector(31 downto 0);
        o_s4_wb_cyc     : out    vl_logic;
        o_s4_wb_stb     : out    vl_logic;
        i_s4_wb_ack     : in     vl_logic;
        i_s4_wb_err     : in     vl_logic;
        o_s5_wb_adr     : out    vl_logic_vector(31 downto 0);
        o_s5_wb_sel     : out    vl_logic_vector(3 downto 0);
        o_s5_wb_we      : out    vl_logic;
        i_s5_wb_dat     : in     vl_logic_vector(31 downto 0);
        o_s5_wb_dat     : out    vl_logic_vector(31 downto 0);
        o_s5_wb_cyc     : out    vl_logic;
        o_s5_wb_stb     : out    vl_logic;
        i_s5_wb_ack     : in     vl_logic;
        i_s5_wb_err     : in     vl_logic;
        o_s6_wb_adr     : out    vl_logic_vector(31 downto 0);
        o_s6_wb_sel     : out    vl_logic_vector(3 downto 0);
        o_s6_wb_we      : out    vl_logic;
        i_s6_wb_dat     : in     vl_logic_vector(31 downto 0);
        o_s6_wb_dat     : out    vl_logic_vector(31 downto 0);
        o_s6_wb_cyc     : out    vl_logic;
        o_s6_wb_stb     : out    vl_logic;
        i_s6_wb_ack     : in     vl_logic;
        i_s6_wb_err     : in     vl_logic;
        o_s7_wb_adr     : out    vl_logic_vector(31 downto 0);
        o_s7_wb_sel     : out    vl_logic_vector(3 downto 0);
        o_s7_wb_we      : out    vl_logic;
        i_s7_wb_dat     : in     vl_logic_vector(31 downto 0);
        o_s7_wb_dat     : out    vl_logic_vector(31 downto 0);
        o_s7_wb_cyc     : out    vl_logic;
        o_s7_wb_stb     : out    vl_logic;
        i_s7_wb_ack     : in     vl_logic;
        i_s7_wb_err     : in     vl_logic
    );
end wishbone_arbiter;