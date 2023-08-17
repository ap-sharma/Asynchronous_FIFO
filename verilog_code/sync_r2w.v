module sync_r2w #(parameter ADDR_SIZE=3)(
input wclk,wrstn,
input [ADDR_SIZE:0] rptr,
output reg [ADDR_SIZE:0] wq2_rptr
);

reg [ADDR_SIZE:0] wq1_rptr;

always@(posedge wclk or negedge wrstn) begin
if(!wrstn) {wq2_rptr,wq1_rptr} <= 0;
else {wq2_rptr,wq1_rptr} <= {wq1_rptr,rptr};
end


endmodule