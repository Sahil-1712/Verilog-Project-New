`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:53:28
// Design Name: 
// Module Name: bin_to_grey_tb
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


`timescale 1ns / 1ps
module tb_bin_to_gray;
reg [3:0] B; // 4-bit binary input
wire [3:0] G; // 4-bit Gray output
// Instantiate the binary to Gray converter module
bin_to_gray uut (
.B(B),
.G(G)
);
initial begin
// Apply test vectors
$display("Binary | Gray");
$display("------- | -----");
B = 4'b0000; #10; // 0 in binary
$display("%b | %b", B, G);
B = 4'b0001; #10; // 1 in binary
$display("%b | %b", B, G);
B = 4'b0010; #10; // 2 in binary
$display("%b | %b", B, G);
B = 4'b0011; #10; // 3 in binary
$display("%b | %b", B, G);
B = 4'b0100; #10; // 4 in binary
$display("%b | %b", B, G);
B = 4'b0101; #10; // 5 in binary
$display("%b | %b", B, G);
B = 4'b0110; #10; // 6 in binary
$display("%b | %b", B, G);
B = 4'b0111; #10; // 7 in binary
$display("%b | %b", B, G);
B = 4'b1000; #10; // 8 in binary
$display("%b | %b", B, G);
B = 4'b1001; #10; // 9 in binary
$display("%b | %b", B, G);
B = 4'b1010; #10; // 10 in binary
$display("%b | %b", B, G);
B = 4'b1011; #10; // 11 in binary
$display("%b | %b", B, G);
B = 4'b1100; #10; // 12 in binary
$display("%b | %b", B, G);
B = 4'b1101; #10; // 13 in binary
$display("%b | %b", B, G);
B = 4'b1110; #10; // 14 in binary
$display("%b | %b", B, G);
B = 4'b1111; #10; // 15 in binary
$display("%b | %b", B, G);
$finish; // End the simulation
end
endmodule
