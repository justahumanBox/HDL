module caculater (opnd1,opnd2,op,R);

input [7:0] opnd1,opnd2,op;
output [7:0] R;
reg [7:0] R;

always @(*)

case(op)
8'd0:R<=opnd1+opnd2;
8'd1:R<=opnd1-opnd2;
8'd2:R<=opnd1*opnd2;
8'd3:R<=opnd1/opnd2;
default:R<=R;
endcase

endmodule 