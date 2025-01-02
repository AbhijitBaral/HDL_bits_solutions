// https://hdlbits.01xz.net/wiki/Vector100r

module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always @(*)begin
        for (i=0; i<=99; i++)begin
            out[99-i] = in[i];
        end
    end
            
endmodule
