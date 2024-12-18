module tb_full_adder;
    reg a, b, cin;           // Inputs
    wire sum, cout;          // Outputs

    // Instantiate the full_adder module
    full_adder uut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    // Apply stimulus to the inputs
    initial begin
        $monitor("At time %t: a = %b, b = %b, cin = %b | sum = %b, cout = %b", 
                 $time, a, b, cin, sum, cout);
        
        // All possible input combinations
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        $finish; // End simulation
    end
endmodule
