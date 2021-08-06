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

title('看跌期权随到期时间的价格变化')
xlabel('标的资产市价')
ylabel('看跌期权价格')
legend('value @ T=1.5','value @ T=1','value @ T=.5','value @ T=0')