// https://hdlbits.01xz.net/wiki/Always_if

// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    
    //mux2t1 using assign statement
    assign out_assign = (sel_b1 && sel_b2)?b:a;
    
    //mux2t1 using procedural if statement
    always @(*)begin
        if(sel_b1 && sel_b2)begin
            out_always = b;
        end
        else begin
            out_always = a;
        end
    end
endmodule
