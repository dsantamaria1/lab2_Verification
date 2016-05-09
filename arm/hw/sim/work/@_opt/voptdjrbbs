library verilog;
use verilog.vl_types.all;
entity a25_decompile is
    port(
        i_clk           : in     vl_logic;
        i_access_stall  : in     vl_logic;
        i_instruction   : in     vl_logic_vector(31 downto 0);
        i_instruction_valid: in     vl_logic;
        i_instruction_undefined: in     vl_logic;
        i_instruction_execute: in     vl_logic;
        i_interrupt     : in     vl_logic_vector(2 downto 0);
        i_interrupt_state: in     vl_logic;
        i_instruction_address: in     vl_logic_vector(31 downto 0);
        i_pc_sel        : in     vl_logic_vector(2 downto 0);
        i_pc_wen        : in     vl_logic
    );
end a25_decompile;
