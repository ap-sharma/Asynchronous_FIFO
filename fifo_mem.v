module fifo_mem #(parameter ADDR_SIZE=3,parameter DATA_SIZE=8)(
input [DATA_SIZE-1:0] wdata,
input [ADDR_SIZE-1:0] waddr,
input [ADDR_SIZE-1:0] raddr,
input wclk,wr_en,
output [DATA_SIZE-1:0] rdata
);

localparam DEPTH = 1 << ADDR_SIZE;

reg [DATA_SIZE-1:0] fifo_mem [0:DEPTH-1];

assign rdata=fifo_mem[raddr];

always@(posedge wclk) begin
if(wr_en) fifo_mem[waddr] <= wdata;
end



endmodule