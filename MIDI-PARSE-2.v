module midi_parse_2(clk, rst, en, midi_command_ready, 
					chan_sel, byte1, byte2, byte3,  		  //параметры сообщений
					gen, note_out, velocity_out, data, control, data_ready
					);

input wire clk;             // 50 MHz clock
input wire rst;             // reset
input wire en;             // enable data transmit
//note control
input [3:0] chan_sel;
input [7:0] byte1;
input [7:0] byte2;
input [7:0] byte3;

output gen;
reg gen;
output [6:0] note_out;
reg [6:0] note_out;
output [6:0] velocity_out;
reg [6:0] velocity_out;
output [13:0] data;
reg [13:0] data;
output [13:0] control;
reg [13:0] control;

wire sysex = byte1[7:4]==4'b1111;

wire message = ((byte1[7:4]>=4'b1000) && (byte1[7:4]<4'b1111));

wire [3:0]chan;
wire [3:0]ch_message = byte1[7:4];

input wire midi_command_ready;
output  data_ready;
reg data_ready;

assign chan = (sysex) ? chan_sel : byte1[3:0];


always @ (posedge midi_command_ready) begin
if (en && (chan==chan_sel)) begin
case (ch_message)
	4'b1000:begin//Note Off
	gen <= 1'b0;
	end
	4'b1001:begin//Note On
	note_out <= byte2[6:0];
	velocity_out <= byte3[6:0];
	gen <= 1'b1;
	end
	4'b1011:begin//CC
	end
	endcase
end	
end

endmodule
