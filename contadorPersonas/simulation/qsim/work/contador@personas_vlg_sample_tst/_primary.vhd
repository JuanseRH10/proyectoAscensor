library verilog;
use verilog.vl_types.all;
entity contadorPersonas_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        personaEntra    : in     vl_logic;
        personaSale     : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contadorPersonas_vlg_sample_tst;
