module midi_parse(clk, rst, en, midi_command_ready, 
					ch_message, 
					chan, chan_sel, note_in, velocity_in, lsb_in, msb_in,  		  //параметры сообщений
					gen, note_out, velocity_out/*, data, control, data_ready*/
					);

input wire clk;             // 50 MHz clock
input wire rst;             // reset
input wire en;             // enable data transmit
//note control
input [3:0] chan;
input [3:0] chan_sel;
input [6:0] note_in;
input [6:0] velocity_in;
input [6:0] lsb_in;
input [6:0] msb_in;
input [3:0] ch_message;

output gen;
reg gen;
output [6:0] note_out;
reg [6:0] note_out;
output [6:0] velocity_out;
reg [6:0] velocity_out;
/*output [13:0] data;
reg [13:0] data;
output [13:0] control;
reg [13:0] control;
output  data_ready;
reg data_ready;*/

input wire midi_command_ready;

always @ (posedge midi_command_ready) begin
if (en && (chan==chan_sel)) begin
case (ch_message)
	4'b1000:begin//Note Off
	gen <= 1'b0;
	end
	4'b1001:begin//Note On
	note_out <= note_in;
	velocity_out <= velocity_in;
	gen <= 1'b1;
	end
	4'b1011:begin//CC
	end
	endcase
end	
end

endmodule
