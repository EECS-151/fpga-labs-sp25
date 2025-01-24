module d_flip_flop (
    input D,
    input clk,
    output Q,
    output Qn
);
    wire n1, n2, n3, n4, Dn;

    not(Dn, D);

    nand(n1, D, clk);
    nand(n2, Dn, clk);
    nand(n3, n1, Qn);
    nand(n4, n2, Q);

    assign Q = n3;
    assign Qn = n4;
endmodule
