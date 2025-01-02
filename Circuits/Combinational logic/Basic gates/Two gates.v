// https://hdlbits.01xz.net/wiki/Exams/m2014_q4g

module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire xn;
    assign xn = ~(in1 ^ in2);
    assign out = xn ^ in3;
    

endmodule
