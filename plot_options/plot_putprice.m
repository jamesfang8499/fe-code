%function [C,P]=blsprice(S0, X, r ,T, sigma)
X=50;
S0=20:.01:80;
r=.08;
sigma=.4;
T=1.5;
[C,P]= blsprice(S0, X, r ,T, sigma);
plot(S0,P,'-green','LineWidth',2);
hold on;

T=1;
[C,P]= blsprice(S0, X, r ,T, sigma);
plot(S0, P,'-magenta','LineWidth',2);
hold on;

T=.5;
[C,P]= blsprice(S0, X, r ,T, sigma);
plot(S0, P,'-blue','LineWidth',2);
hold on;

T=0;
[C,P]= blsprice(S0, X, r ,T, sigma);
plot(S0,P,'--red','LineWidth',2);
hold on;

title('������Ȩ�浽��ʱ��ļ۸�仯')
xlabel('����ʲ��м�')
ylabel('������Ȩ�۸�')
legend('value @ T=1.5','value @ T=1','value @ T=.5','value @ T=0')