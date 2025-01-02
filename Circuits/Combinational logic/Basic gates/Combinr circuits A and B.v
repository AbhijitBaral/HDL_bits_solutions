// https://hdlbits.01xz.net/wiki/Mt2015_q4

module top_module (input x, input y, output z);
    wire za1,zb1,za2,zb2;
    A A1(.xa(x), .ya(y), .za(za1));
    A A2(.xa(x), .ya(y), .za(za2));
    B B1(.xb(x), .yb(y), .zb(zb1));
    B B2(.xb(x), .yb(y), .zb(zb2));
    
    assign z = (za1 | zb1) ^ (za2 & zb2);
endmodule

module A (input xa, input ya, output za);
    assign za = (xa^ya) & xa;
endmodule

module B ( input xb, input yb, output zb );
    assign zb = ~(xb ^ yb);
endmodule
