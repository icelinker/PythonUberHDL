// File: DEMUX1_2_Combo_TBV.v
// Generated by MyHDL 0.10
// Date: Sun Sep 23 18:24:16 2018


`timescale 1ns/10ps

module DEMUX1_2_Combo_TBV (

);
// myHDL -> testbench for module `DEMUX1_2_Combo`


reg x = 0;
reg s = 0;
wire y0;
wire y1;
wire [13:0] xTV;
wire [13:0] sTV;

assign xTV = 14'd5479;
assign sTV = 14'd3830;


always @(x, y0, s, y1) begin: DEMUX1_2_COMBO_TBV_PRINT_DATA
    $write("%h", x);
    $write(" ");
    $write("%h", s);
    $write(" ");
    $write("%h", y0);
    $write(" ");
    $write("%h", y1);
    $write("\n");
end



assign y0 = ((!s) && x);
assign y1 = (s && x);


initial begin: DEMUX1_2_COMBO_TBV_STIMULES
    integer i;
    for (i=0; i<14; i=i+1) begin
        x <= xTV[i];
        s <= sTV[i];
        # 1;
    end
    $finish;
end

endmodule