module Clk_05(clk_50m,clk_05);
input clk_50m;
output reg clk_05;
integer cnt;//����������Ĵ���

//��������������
always@(posedge clk_50m)
if(cnt == 49_999_999)begin
cnt<=0;clk_05=~clk_05;
end
else
cnt<=cnt+1;

endmodule 