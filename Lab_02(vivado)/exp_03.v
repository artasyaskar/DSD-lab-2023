
module exp_03(
input wire  a,
input wire b,
input wire c,
output wire x,
output wire y
    );
    wire out_c, out_or, out_nand, out_xor2;
    
    assign out_c = ~c;
    assign out_or = a|b;
    assign x = out_c ^ out_or;
    assign out_nand = ~(a&b);
    assign out_xor2 = out_nand ^ out_or;
    assign y = out_or & out_xor2;
        
endmodule
