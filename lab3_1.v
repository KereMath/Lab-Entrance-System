`timescale 1ns / 1ps

module ab(input A, input B, input clk, output reg Q);

    initial Q = 0;

    // You can implement your code here
    // ...
	 always@(posedge clk)
begin 
		case({A,B})
		2'b 00:Q = Q;
		2'b 01:Q = 1'b 1;
		2'b 10:Q = 1'b 0;
		2'b 11:Q = ~Q;
		endcase
end
endmodule

module ic1337(input I0, input I1, input I2, input clk, output Q0, output Q1, output Z);

    


wire w1,w2,w3,w4;

nor(w1,I0, ~I1);	
and(w4,~I2,w1) ;
ab s1(w4,I2,clk,Q0);

nor(w2,I2,~I1);
xnor(w3,I0,w2);
ab s2(~I2,w3,clk,Q1);

xor(Z,Q0,Q1);
endmodule
