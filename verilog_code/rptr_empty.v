module rptr_empty#(parameter ADDR_SIZE=3)(
input rclk,rrstn,rinc,
input [ADDR_SIZE:0] rq2_wptr,
output reg rempty,
output [ADDR_SIZE-1:0] raddr,
output reg [ADDR_SIZE:0] rptr
);

wire rempty_val;
wire [ADDR_SIZE:0] rgrey_next,rbin_next;
reg [ADDR_SIZE:0] rbin;

assign rempty_val = (rgrey_next== rq2_wptr);

always @(posedge rclk or negedge rrstn)begin
if(!rrstn) rempty <= 1'b1;
else rempty <= rempty_val;
end

assign rbin_next = rbin + (rinc & ! rempty);
assign rgrey_next = rbin_next>>1 ^ rbin_next;


always @(posedge rclk or negedge rrstn) begin

if(!rrstn) {rbin,rptr}<=0;
else {rbin,rptr} <= {rbin_next,rgrey_next};

end


assign raddr = rbin[ADDR_SIZE-1:0];






endmodule