//YA HOSSEIN

module instMem (address, data);
input [31:0] address;
output [31:0] data;
           
reg [31:0] mem [4294967295:0];  
      
assign data = mem[address];

//initial begin
//  $readmemb("memory.list", mem); // memory_list is memory file
//end

endmodule
