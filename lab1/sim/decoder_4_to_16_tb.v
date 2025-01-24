`timescale 1ns/1ns

`define SECOND 1000000000
`define MS 1000000

module decoder_4_to_16_tb();
    reg [3:0] addr;
    wire [15:0] one_hot;

    decoder_4_to_16 DUT (
        .addr(addr),
        .one_hot(one_hot)
    );

    integer i;

    initial begin
        `ifdef IVERILOG
            $dumpfile("decoder_4_to_16_tb.fst");
            $dumpvars(0, decoder_4_to_16_tb);
        `endif
        `ifndef IVERILOG
            $vcdpluson;
        `endif

        for (i = 0; i < 10; i = i + 1) begin
            addr = $urandom % 16;
            #(1);
            assert(one_hot == 16'b1 << addr) else $fatal("Expected one_hot to be %b, but got %b for addr=%b", 16'b1 << addr, one_hot, addr);
        end

        $display("All tests passed!");

        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule
