module counter_4bit(input reg down,load, 
				input [3:0] data_in,
				input clk , rst ,
				output reg [3:0]q);
	
	always @(posedge clk)
		begin 
			if(!rst)
				q<=4'd0;
			else if(load)
				q <= data_in ;
			else if (down)
				q <= q-1;
			else
				q <= q + 1;
		end
	endmodule 
