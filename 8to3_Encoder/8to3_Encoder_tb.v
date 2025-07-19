`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 22:08:30
// Design Name: 
// Module Name: 8to3_Encoder_tb
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


// Testbench for 8:3 Priority Encoder
module priority_encoder_tb;
    reg [7:0] in;
    wire [2:0] out;
    wire valid;
    
    priority_encoder encoder(.in(in), .out(out), .valid(valid));
    
    initial begin
        $monitor("Time=%0t in=%b out=%b valid=%b", $time, in, out, valid);
        
        in = 8'b00000000; #10;
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;
        in = 8'b11111111; #10;
        
        $finish;
    end
endmodule