module shift_register_structural (
    input in,
    input clk,
    output [3:0] out
);
    wire Q1, Q2, Q3, Q4;
    wire Q1n, Q2n, Q3n, Q4n;

    d_flip_flop dff_1(____, ____, ____, ____); // TODO
    d_flip_flop dff_2(____, ____, ____, ____); // TODO
    d_flip_flop dff_3(____, ____, ____, ____); // TODO
    d_flip_flop dff_4(____, ____, ____, ____); // TODO

    assign out = {____, ____, ____, ____}; // TODO
endmodule
