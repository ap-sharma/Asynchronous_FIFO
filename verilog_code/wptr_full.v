module wptr_full #(parameter ADDR_SIZE = 3) (    
input wclk,wrstn,winc,
input [ADDR_SIZE:0] wq2_rptr,
output reg wfull,
output [ADDR_SIZE-1:0] waddr,
output reg [ADDR_SIZE:0] wptr
);
wire wfull_val;
wire [ADDR_SIZE:0] wgrey_next,wbin_next;
reg [ADDR_SIZE:0] wbin;

assign wfull_val = (wgrey_next[ADDR_SIZE:0]== {!wq2_rptr[ADDR_SIZE],!wq2_rptr[ADDR_SIZE-1],wq2_rptr[ADDR_SIZE-2:0]});

always @(posedge wclk or negedge wrstn)begin
if(!wrstn) wfull <= 1'b0;
else wfull <= wfull_val;
end

assign wbin_next = wbin + (winc & ! wfull);
assign wgrey_next = wbin_next>>1 ^ wbin_next;


always @(posedge wclk or negedge wrstn) begin

if(!wrstn) {wbin,wptr}<=0;
else {wbin,wptr} <= {wbin_next,wgrey_next};

end


assign waddr = wbin[ADDR_SIZE-1:0];

endmodule