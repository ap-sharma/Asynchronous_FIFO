module sync_w2r #(parameter ADDR_SIZE=3)(
input rclk,rrstn,
input [ADDR_SIZE:0] wptr,
output reg [ADDR_SIZE:0] rq2_wptr
);

reg [ADDR_SIZE:0] rq1_wptr;


always@(posedge rclk or negedge rrstn) begin
if(!rrstn) {rq2_wptr,rq1_wptr} <= 0;
else {rq2_wptr,rq1_wptr} <= {rq1_wptr,wptr};
end


endmodule