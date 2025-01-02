// https://hdlbits.01xz.net/wiki/Module_addsub

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire carry;
    wire [31:0] b_not;
    wire [31:0] sub_vec;
    assign sub_vec={32{sub}};
    assign b_not = sub_vec[31:0] ^ b[31:0];
    
    add16 adder_lower(.a(a[15:0]), .b(b_not[15:0]), .cin(sub), .cout(carry), .sum(sum[15:0]));
    add16 adder_upper(.a(a[31:16]), .b(b_not[31:16]), .cin(carry), .sum(sum[31:16]));
    
endmodule
