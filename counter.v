module counter(clk,cin,cout,num,Rst_n);//m15
input clk;//����ʱ��
input cin;//�����ź�
input Rst_n;
output reg cout=0;
output reg [3:0] num=0;

always@(posedge cin or posedge clk or negedge Rst_n)
if(!Rst_n) num=0;
else if(clk) num=0;//һ�������ڣ��а������clk==0,����0.5hz,����2s,������1s
else if(num==9)begin
num<=0;cout<=1;
end
else begin
num<=num+1;cout<=0;
end

endmodule 