// https://hdlbits.01xz.net/wiki/Module_name

module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a inst(.in1(a), .in2(b), .in4(d), .in3(c), .out1(out1), .out2(out2));

endmodule
