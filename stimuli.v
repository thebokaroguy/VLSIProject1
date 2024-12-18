//we are going to perform testbench on earlier full adder that we designed using half adder

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2024 21:11:43
// Design Name: 
// Module Name: stimuli
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



module stimuli;

    // Declare inputs as reg and outputs as wire
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire carry;

    // Instantiate the Full_adder module
    Full_adder dut (a, b, cin, sum, carry);

    // Apply stimulus to the inputs
    initial begin
        // Monitor signals for debugging
        $monitor("At time %t: a = %b, b = %b, cin = %b | sum = %b, carry = %b", 
                 $time, a, b, cin, sum, carry);

        // Apply all possible input combinations
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        $finish; // End the simulation
    end

endmodule
