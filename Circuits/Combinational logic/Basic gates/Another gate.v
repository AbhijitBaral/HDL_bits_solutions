// https://hdlbits.01xz.net/wiki/Exams/m2014_q4f

module top_module (
    input in1,
    input in2,
    output out);
    
    assign out  = (~in2) & in1;

endmodule
