module _7seg(A,F);
input [3:0] A;
output [6:0] F; //顯示七段顯示器只需要7個輸出，如使用第8個則是小數點
reg [6:0] F; //F在always裡面需要reg暫存
  always@(A)
   case(A) //只有1個case,不用begin,end
    4'd0:F=7'b1000000; 
    4'd1:F=7'b1111001;
    4'd2:F=7'b0100100;
    4'd3:F=7'b0110000;
    4'd4:F=7'b0011001;
    4'd5:F=7'b0010010;
    4'd6:F=7'b0000010;
    4'd7:F=7'b1111000;
    4'd8:F=7'b0000000;
    4'd9:F=7'b0010000;
    4'd10:F=7'b0001000; //A
    4'd11:F=7'b0000011; //b
    4'd12:F=7'b1000110; //C
    4'd13:F=7'b0100001; //d
    4'd14:F=7'b0000110; //E
    4'd15:F=7'b0001110; //F
    default:F=7'b1111111;
   endcase
endmodule 