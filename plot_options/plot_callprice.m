% using function [C,P]=blsprice(S0, X, r ,T, sigma)
X=50;
S0=20:.01:80;
r=.08;
sigma=.4;    
T=1.5; 
 
plot(S0, blsprice(S0, X, r ,T, sigma),'-green');
hold on;

T=1;
plot(S0, blsprice(S0, X, r ,T, sigma),'-cyan');

T=.5;
plot(S0, blsprice(S0, X, r ,T, sigma),'-blue');

T=0;
plot(S0, blsprice(S0, X, r ,T, sigma),'--red');

title('看涨期权随到期时间的价格变化')
xlabel('标的资产市价')
ylabel('看涨期权价格')
legend('value @ T=1.5','value @ T=1','value @ T=.5','value @ T=0')
hold off
