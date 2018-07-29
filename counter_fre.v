module counter_fre(clk_05,cin,cout,data,Rst_n);
input clk_05;//ʱ��2Hz
input cin;//�����ź�
input Rst_n;//��λ��
output reg cout;//����ж�
output reg [23:0] data;//6λ����,BCD��

wire out;
wire [23:0] num;
wire cout_1,cout_2,cout_3,cout_4,cout_5;


counter(.clk(clk_05),.cin(cin),.cout(cout_1),.num(num[3:0]),.Rst_n(Rst_n));
counter(.clk(clk_05),.cin(cout_1),.cout(cout_2),.num(num[7:4]),.Rst_n(Rst_n));
counter(.clk(clk_05),.cin(cout_2),.cout(cout_3),.num(num[11:8]),.Rst_n(Rst_n));
counter(.clk(clk_05),.cin(cout_3),.cout(cout_4),.num(num[15:12]),.Rst_n(Rst_n));
counter(.clk(clk_05),.cin(cout_4),.cout(cout_5),.num(num[19:16]),.Rst_n(Rst_n));
counter(.clk(clk_05),.cin(cout_5),.cout(out),.num(num[23:20]),.Rst_n(Rst_n));


//ÿ2s���������
always@(posedge clk_05 or negedge Rst_n)begin
if(!Rst_n) data<=0;
else
data<=num;
end

always@(posedge clk_05 or negedge Rst_n)begin
cout=out;
end       

endmodule 