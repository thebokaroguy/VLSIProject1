module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;        // XOR operation for sum
    assign cout = (a & b) | (b & cin) | (cin & a); // Carry logic
endmodule
