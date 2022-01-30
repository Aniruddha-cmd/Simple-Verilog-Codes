module counter_tb;
reg down,load,clk , rst ;
reg [3:0]data_in ;
wire[3:0] q ;


counter_4bit DUT (down,load,data_in,clk, rst, q);
initial
	begin
		clk = 0;
		forever #10 clk = !clk;
	
	end

task data_input([3:0]data);
begin
@(negedge clk)
load = 1 ;
data_in = data;
@(negedge clk)
load =0;
end
endtask

task delay;
begin 
#90;
end
endtask
	
task D_down;
begin 
@(negedge clk)
down = 1;
@(negedge clk)
down =0;
end
endtask


initial 
	begin
		rst=0;
		delay;
		rst =1;
		data_input(5);
		#380;
		D_down;
		
		
		
		
	end
	
endmodule
