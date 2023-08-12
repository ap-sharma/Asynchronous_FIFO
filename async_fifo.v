module async_fifo #(parameter ADDR_SIZE=3,parameter DATA_SIZE=8)(
input winc,wrstn,rinc,rrstn,rclk,wclk,
input [DATA_SIZE-1:0] wdata,
output [DATA_SIZE-1:0] rdata,
output wfull,rempty
 );

wire wr_en;
wire [ADDR_SIZE:0] rptr,wptr,wq2_rptr,rq2_wptr;
wire [ADDR_SIZE-1:0] waddr,raddr;
assign wr_en = winc && !wfull;

 
 
fifo_mem #(ADDR_SIZE,DATA_SIZE) fifo_mem (.wdata(wdata),.rdata(rdata),.wr_en(wr_en),.waddr(waddr),.raddr(raddr),.wclk(wclk));

sync_r2w #(ADDR_SIZE) sync_r2w (.wclk(wclk),.wrstn(wrstn),.rptr(rptr),.wq2_rptr(wq2_rptr));

sync_w2r #(ADDR_SIZE) sync_w2r (.rclk(rclk),.rrstn(rrstn),.wptr(wptr),.rq2_wptr(rq2_wptr));

wptr_full #(ADDR_SIZE) wptr_full (.wclk(wclk),.wrstn(wrstn),.winc(winc),.wq2_rptr(wq2_rptr),.wfull(wfull),.waddr(waddr),.wptr(wptr));

rptr_empty #(ADDR_SIZE) rptr_empty (.rclk(rclk),.rrstn(rrstn),.rinc(rinc),.rq2_wptr(rq2_wptr),.rempty(rempty),.raddr(raddr),.rptr(rptr));
 
 
 
 
 
 
 endmodule