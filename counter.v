module counter(clk,cin,cout,num,Rst_n);//m15
input clk;//ʱ��
input cin;//�������ź�
input Rst_n;//��λ��
output reg cout=0;//��λ
output reg [3:0] num=0;//���Ҫ��ʾ����,BCD��

always@(posedge cin or posedge clk or negedge Rst_n)
if(!Rst_n) num=0;
else if(clk) num=0;//һ�������ڣ��а������clk==0,����0.5hz,����2s,������1s
else if(cin)begin
if(num==9) begin num<=0;cout<=1;end
else begin num<=num+1;cout<=0;end
end

endmodule 