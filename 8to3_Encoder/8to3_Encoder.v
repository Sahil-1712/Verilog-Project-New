`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 22:06:30
// Design Name: 
// Module Name: 8to3_Encoder
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

// 8:3 Priority Encoder using Dataflow Modeling
module priority_encoder(
    input [7:0] in,
    output [2:0] out,
    output valid
);

assign out[2] = in[7] | in[6] | in[5] | in[4];
assign out[1] = in[7] | in[6] | ~in[5]&~in[4]&(in[3] | in[2]);
assign out[0] = in[7] | ~in[6]&in[5] | ~in[6]&~in[4]&in[3] | ~in[6]&~in[4]&~in[2]&in[1];
assign valid = |in;

endmodule
