/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Counter to 10
*/

module counter(
    input clk,
	 input clr,
	 input [31:0]def,
	 output clk2,
    output [31:0]adr
);

reg [31:0]cnt = 0;

assign adr = cnt;

assign clk2 = cnt[31];

always @(posedge clk or posedge clr) begin
    if (clr)
        cnt <= 0;
    else
        cnt <= cnt + def;
end

endmodule
