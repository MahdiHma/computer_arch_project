//YA REZA

module dataMem (out, adrs, data, wr, clk, cs);
   output reg [7:0] out;
   input [7:0] data;
   input [11:0] adrs;
   input wr, clk, cs;
   reg [7:0] mem [(2<<12) - 1:0];
   
   always @(posedge clk) begin
        if (cs) begin
			if (wr)
				mem[adrs] <= data;
			else
				out <= mem[adrs];
		end
   end
endmodule
