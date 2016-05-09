library verilog;
use verilog.vl_types.all;
entity eth_spram_256x32 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ce              : in     vl_logic;
        we              : in     vl_logic_vector(3 downto 0);
        oe              : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        di              : in     vl_logic_vector(31 downto 0);
        do              : out    vl_logic_vector(31 downto 0)
    );
end eth_spram_256x32;
