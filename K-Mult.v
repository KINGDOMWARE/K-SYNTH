module kmult(
	 clk,	
    ax,
	 bx,
	 cx
);

input clk;
input [7:0]ax;
input [7:0]bx;
output [15:0]cx;
reg [15:0]cx;

/*reg [7:0]ax;
reg [7:0]bx;
reg [15:0]sum;

reg [1:0]cnt = 0;*/

always @(posedge clk) begin
		  cx <= (ax & bx[7])<<7+(ax & bx[6])<<6+(ax & bx[5])<<5+(ax & bx[4])<<4+(ax & bx[3])<<3+(ax & bx[2])<<2+(ax & bx[1])<<1+(ax & bx[0]);
    end
endmodule