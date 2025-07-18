module three_bit_adder (
    input  logic [2:0] a,     // 3-bit input a
    input  logic [2:0] b,     // 3-bit input b
    input  logic       cin,   // carry-in
    output logic [2:0] sum,   // 3-bit sum output
    output logic       cout   // carry-out
);

    logic [3:0] temp_sum; // 4-bit temporary sum to hold carry

    always_comb begin
        temp_sum = a + b + cin;   // add inputs and carry-in
        sum  = temp_sum[2:0];     // lower 3 bits as sum
        cout = temp_sum[3];       // MSB is carry-out
    end

endmodule
