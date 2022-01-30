module counter_tb;
reg up,down,clk , rst ;
wire[3:0] q ;


counter_4bit DUT (up,down,clk, rst, q);
initial
	begin
		clk = 0;
		forever #10 clk = !clk;
	
	end
	
initial 
	begin
		rst = 0;
		#20;
		rst =1;
		#20;
		up =1;#50;
		up=0;#50;
		down=1;#50;
		down =0;#50;
		up=1;
		
	end
	
endmodule
