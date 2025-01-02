// https://hdlbits.01xz.net/wiki/Adder100i

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    genvar i;
    wire carry;
    generate
        for(i=0; i<=99; i++)begin: RCA
            //First full adder
            if(i == 0)begin
                FA adder(.A(a[i]), .B(b[i]), .Cin(cin), .Cout(cout[i]), .Sum(sum[i]));
            end
            //Rest of the full adders
            else begin
                FA adder(.A(a[i]), .B(b[i]), .Cin(cout[i-1]), .Cout(cout[i]), .Sum(sum[i]));
            end
        end
        endgenerate
endmodule

module FA(A, B , Cin, Sum, Cout);
  	input A, B, Cin;
  	output Sum, Cout;

  	assign Sum = A^B^Cin;
  	assign Cout = (A&B)|(Cin&(A^B));
endmodule
