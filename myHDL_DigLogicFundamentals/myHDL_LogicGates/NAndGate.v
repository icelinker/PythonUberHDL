// File: NAndGate.v
// Generated by MyHDL 0.10
// Date: Sun Sep  2 00:47:06 2018


`timescale 1ns/10ps

module NAndGate (
    X0,
    X1,
    Y
);
// NAND Gate demo module
// 
// Input:
//     X0(bool): NAnd gate input 0
//     X1(bool): NAnd gate input 1
// 
// Output:
//     Y(bool): NAnd gate ouput 

input X0;
input X1;
output Y;
wire Y;





assign Y = (!(X0 && X1));

endmodule