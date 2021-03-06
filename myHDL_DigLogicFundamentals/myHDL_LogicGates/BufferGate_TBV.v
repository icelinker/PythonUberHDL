// File: BufferGate_TBV.v
// Generated by MyHDL 0.10
// Date: Mon Sep  3 14:43:59 2018


`timescale 1ns/10ps

module BufferGate_TBV (

);
// myHDL -> Verilog testbench for module `BufferGate`


wire Y;
reg X = 0;
wire [9:0] XTV;

assign XTV = 10'd876;


always @(X, Y) begin: BUFFERGATE_TBV_PRINT_DATA
    $write("%h", X);
    $write(" ");
    $write("%h", Y);
    $write("\n");
end



assign Y = X;


initial begin: BUFFERGATE_TBV_STIMULES
    integer i;
    for (i=0; i<10; i=i+1) begin
        X <= XTV[i];
        # 1;
    end
    $finish;
end

endmodule
