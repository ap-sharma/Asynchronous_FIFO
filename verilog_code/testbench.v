module testbench;

localparam DATA_SIZE = 8;
localparam ADDR_SIZE =3;
integer i,j;


reg winc,wrstn,rinc,rrstn,rclk,wclk;

wire wfull,rempty;
wire [DATA_SIZE-1:0]rdata;
reg [DATA_SIZE-1:0]wdata;

async_fifo #(.ADDR_SIZE(ADDR_SIZE),.DATA_SIZE(DATA_SIZE)) async_fifo (winc,wrstn,rinc,rrstn,rclk,wclk,wdata,rdata,wfull,rempty);

always
#10 rclk = ~rclk;

always
#18 wclk = ~wclk;

initial 
begin
{winc,wrstn,rinc,rrstn,rclk,wclk} = 0;
#15;
{wrstn,rrstn} = 2'b11;
for (i=0;i<15;i=i+1) begin
	winc = 1;
	wdata = i**2;
	#36;
	winc = 0;
	#36;
end
end

initial 
begin
#50;
for (j=0;j<3;j=j+1) begin
	rinc =1;
	#20;
	rinc = 0;
	#20;
end
#750
for (j=0;j<3;j=j+1) begin
	rinc =1;
	#20;
	rinc = 0;
	#20;
end

end

initial 
begin

#2000;
$stop;

end


endmodule