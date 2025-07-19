`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 21:50:26
// Design Name: 
// Module Name: 4to16_Decoder_tb
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


// Testbench for 4-to-16 Decoder
module decoder_4to16_tb;
    reg [3:0] in;
    reg en;
    wire [15:0] out;
    
    // Instantiate the 4-to-16 decoder
    decoder_4to16 dut(
        .in(in),
        .en(en),
        .out(out)
    );
    
    initial begin
        // Initialize inputs
        in = 4'b0000;
        en = 1'b1;
        
        // Test all input combinations
        repeat(16) begin
            #10 in = in + 1;
        end
        
        // Test enable
        #10 en = 1'b0;
        in = 4'b0101;
        
        #10 $finish;
    end
endmodule
