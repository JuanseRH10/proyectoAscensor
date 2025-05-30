library verilog;
use verilog.vl_types.all;
entity movimientoAscensor_vlg_sample_tst is
    port(
        enable          : in     vl_logic;
        pet1            : in     vl_logic_vector(2 downto 0);
        pet2            : in     vl_logic_vector(2 downto 0);
        pisoActual      : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end movimientoAscensor_vlg_sample_tst;
