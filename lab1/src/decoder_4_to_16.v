module decoder_4_to_16 (
    input [3:0] addr,
    output [15:0] one_hot
);
    generate
        genvar i;
        for (________) begin // TODO
            line_decoder ld (
                .select(____), // TODO
                .addr(____), // TODO
                .single_wire(____) // TODO
            );
        end
    endgenerate
endmodule
