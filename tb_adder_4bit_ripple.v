module adder_4bit_tb;
    reg  [3:0] a;
    reg  [3:0] b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    adder_4bit dut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $display("a\tb\tcin\t|sum  \t\tcout");
        $display("----------------------------------------------------------");
        $monitor("a=%b\tb=%b\tcin=%b\t|sum=%b\tcout=%b", a, b, cin, sum, cout);

        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0000; b = 4'b0000; cin = 1; #10;
        a = 4'b0000; b = 4'b0001; cin = 0; #10;
        a = 4'b0000; b = 4'b0001; cin = 1; #10;
        a = 4'b0001; b = 4'b0001; cin = 0; #10;
        a = 4'b0011; b = 4'b0101; cin = 0; #10;
        a = 4'b0011; b = 4'b0101; cin = 1; #10;
        a = 4'b0111; b = 4'b0001; cin = 0; #10;
        a = 4'b0111; b = 4'b1000; cin = 0; #10;
        
        $display("adder_4bit output-----done");
        $finish;
    end
endmodule
