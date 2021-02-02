/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Counter to 10
*/

module countread(
    clk,
	 clr,
	 in,
	 adr,
    out
);

input clk;
input clr;
input [7:0]in;
output [1:0]adr;
output [31:0]out;
reg [31:0]out;
reg [31:0]buffer;

reg [3:0]cnt = 0;

assign adr[1] = cnt[3];
assign adr[0] = cnt[2];

always @(posedge clk or posedge clr) begin
    if (clr)
        cnt <= 0;
    else begin
        case(cnt)
		  0:begin
		  out <= buffer;
		  end
		  3:begin
		  buffer[7:0] <= in[7:0];
		  end
		  7:begin
		  buffer[15:8] <= in[7:0];
		  end
		  11:begin
		  buffer[23:16] <= in[7:0];
		  end
		  15:begin
		  buffer[31:24] <= in[7:0];
		  end
		  endcase
		  cnt <= cnt + 1;
	 end	  
end

endmodule
