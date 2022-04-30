module clockdivider (i_mainclk, o_outclk);
		
		input wire  i_mainclk;
		output wire		o_outclk;
		reg divfactor;
		
always @(posedge i_mainclk)
begin
	divfactor = divfactor + 1'b1 ;
	if(divfactor==80)
	begin
		o_outclk<= 1'b1;
		divfactor = 1'b0;
	end
end
endmodule 