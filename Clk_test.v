module Clk_test(clk_50m,clk_t);
input clk_50m;
output reg clk_t;
integer cnt;//����������Ĵ���

//��������������
always@(posedge clk_50m)
if(cnt == 6249999)begin
cnt<=0;clk_t=~clk_t;
end
else
cnt<=cnt+1;

endmodule 