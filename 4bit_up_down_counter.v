module counter_4bit(input reg up,down, 
				input clk , rst ,
				output reg [3:0]q);
	//reg up ,down;
	//reg [3:0] q;
	
	always @(posedge clk)
		begin 
			if(!rst)
				q<=4'd0;
			else if (up)
				q <= q + 1;
			else if (down)
				q <= q-1;
		end
	endmodule 
