library verilog;
use verilog.vl_types.all;
entity eth_top is
    generic(
        Tp              : integer := 1
    );
    port(
        wb_clk_i        : in     vl_logic;
        wb_rst_i        : in     vl_logic;
        wb_dat_i        : in     vl_logic_vector(31 downto 0);
        wb_dat_o        : out    vl_logic_vector(31 downto 0);
        wb_adr_i        : in     vl_logic_vector(11 downto 2);
        wb_sel_i        : in     vl_logic_vector(3 downto 0);
        wb_we_i         : in     vl_logic;
        wb_cyc_i        : in     vl_logic;
        wb_stb_i        : in     vl_logic;
        wb_ack_o        : out    vl_logic;
        wb_err_o        : out    vl_logic;
        m_wb_adr_o      : out    vl_logic_vector(31 downto 0);
        m_wb_sel_o      : out    vl_logic_vector(3 downto 0);
        m_wb_we_o       : out    vl_logic;
        m_wb_dat_o      : out    vl_logic_vector(31 downto 0);
        m_wb_dat_i      : in     vl_logic_vector(31 downto 0);
        m_wb_cyc_o      : out    vl_logic;
        m_wb_stb_o      : out    vl_logic;
        m_wb_ack_i      : in     vl_logic;
        m_wb_err_i      : in     vl_logic;
        mtx_clk_pad_i   : in     vl_logic;
        mtxd_pad_o      : out    vl_logic_vector(3 downto 0);
        mtxen_pad_o     : out    vl_logic;
        mtxerr_pad_o    : out    vl_logic;
        mrx_clk_pad_i   : in     vl_logic;
        mrxd_pad_i      : in     vl_logic_vector(3 downto 0);
        mrxdv_pad_i     : in     vl_logic;
        mrxerr_pad_i    : in     vl_logic;
        mcoll_pad_i     : in     vl_logic;
        mcrs_pad_i      : in     vl_logic;
        mdc_pad_o       : out    vl_logic;
        md_pad_i        : in     vl_logic;
        md_pad_o        : out    vl_logic;
        md_padoe_o      : out    vl_logic;
        int_o           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Tp : constant is 1;
end eth_top;
