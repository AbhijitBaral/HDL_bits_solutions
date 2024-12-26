// https://hdlbits.01xz.net/wiki/Module_cseladd

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry;
    wire [15:0] sum1, sum0;
    add16 adder_lower(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(carry), .sum(sum [15:0]));
    add16 adder_upper1(.a(a[31:16]),.b(b[31:16]), .cin(1'b1), .sum(sum1));
    add16 adder_upper0(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum0));
    
    always @(carry)begin
        if (carry)
            sum[31:16]=sum1;
        else
            sum[31:16]=sum0;
    end
endmodule
