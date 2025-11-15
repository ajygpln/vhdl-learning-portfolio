`timescale 1ns / 1ps

module tb;
    reg a;
    reg b;
    wire s;
    wire c;
    
    top dut (
        .a(a),
        .b(b),
        .s(s),
        .c(c)
    );

    initial begin
        $display("                      a b | s c");
        $monitor("%4t  %b %b | %b %b", $time, a, b, s, c);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        #10;
        $finish; 
    end

endmodule
