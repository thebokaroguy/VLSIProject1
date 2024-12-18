module Full_adder(
    input a, 
    input b, 
    input cin,
    output sum, 
    output carry
    );

    // Declare intermediate wires
    wire s1;   // Sum output from the first half adder
    wire c1;   // Carry output from the first half adder
    wire c2;   // Carry output from the second half adder

    // Instantiate the first half adder
    half_adder HA1 (
        .a(a), 
        .b(b), 
        .sum(s1), 
        .carry(c1)
    );
    
    // Instantiate the second half adder
    half_adder HA2 (
        .a(s1), 
        .b(cin), 
        .sum(sum), 
        .carry(c2)
    );
    
    // Generate the final carry output
    assign carry = c1 | c2;

endmodule
