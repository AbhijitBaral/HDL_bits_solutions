// https://hdlbits.01xz.net/wiki/Popcount255

module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    integer i;
    reg [7:0] count;
    always @(*)begin
        count = 8'd0;
        for (i =0; i<=254; i++)begin
            if(in[i])
                count++;
        end
    end
    
    assign out = count;

endmodule
