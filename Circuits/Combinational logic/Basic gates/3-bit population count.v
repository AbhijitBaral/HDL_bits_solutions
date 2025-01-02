// https://hdlbits.01xz.net/wiki/Popcount3

module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    wire [2:0] comp;
    assign comp = 3'b111;
    reg [1:0] count;
    
    integer i;
    always @(*)begin
        count = 2'b00;
    	for(i=0;i<=2;i++)begin
        	if(in[i] & comp[i])
            	count++;
    	end
    end
    
    assign out = count;

endmodule
