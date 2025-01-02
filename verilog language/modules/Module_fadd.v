// https://hdlbits.01xz.net/wiki/Module_fadd

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry;
    add16 adderUpper(.a(a[31:16]), .b(b[31:16]), .cin(carry), .sum(sum[31:16]));
    add16 adderLower(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(carry));
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign sum=a^b^cin;
    assign cout=a&b | a&cin | b&cin;
endmodule
