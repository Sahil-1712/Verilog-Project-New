`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 21:48:19
// Design Name: 
// Module Name: 4to16_Decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// 3-to-8 Decoder module
module decoder_3to8(
    input [2:0] in,
    input en,
    output reg [7:0] out
);
    always @(*) begin
        if (en) begin
            case(in)
                3'b000: out = 8'b00000001;
                3'b001: out = 8'b00000010;
                3'b010: out = 8'b00000100;
                3'b011: out = 8'b00001000;
                3'b100: out = 8'b00010000;
                3'b101: out = 8'b00100000;
                3'b110: out = 8'b01000000;
                3'b111: out = 8'b10000000;
                default: out = 8'b00000000;
            endcase
        end else begin
            out = 8'b00000000;
        end
    end
endmodule

// 4-to-16 Decoder module using two 3-to-8 Decoders
module decoder_4to16(
    input [3:0] in,
    input en,
    output [15:0] out
);
    wire [7:0] low_out, high_out;
    
    // Instantiate two 3-to-8 decoders
    decoder_3to8 low_decoder(
        .in(in[2:0]),
        .en(en & ~in[3]),
        .out(low_out)
    );
    
    decoder_3to8 high_decoder(
        .in(in[2:0]),
        .en(en & in[3]),
        .out(high_out)
    );
    
    // Combine outputs
    assign out = {high_out, low_out};
    
endmodule