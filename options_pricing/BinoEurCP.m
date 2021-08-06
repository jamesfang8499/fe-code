function [price, P]=BinoEurCP(S0, X, r, T, sig, N, arg)
% 计算欧式看涨看跌期权价格的代码（基于二项式模型）

%{
example: 
S0=100;   X=110;  r=0.05;   T=1;    sig=0.5;    N=100;    arg=1
[price, P]=EurAmCP(S0, X, r, T, sig, N, arg)

% 输出的是100期二项式模型下欧式期权的结果，其中的参数分别为：标的资产当前价格100；期权的行权价为110；
% 无风险年利率为5%；期权剩余期限1年；标的资产的波动率0.5；
% 看涨期权（若要求看跌期权价格，arg项取除1以外的其他数值）
% 输出的结果有两个：欧式期权的价格和对应的期权二叉树
%}

dt=T/N;
u=exp(sig*sqrt(dt));
d=1/u;
p=(exp(r*dt)-d)/(u-d);        %风险中性概率
P=zeros(N+1,N+1);
if arg==1                          % 求看涨期权的价值
    for j=0:N
        P(j+1,N+1)=max(0, S0*(u^(N-j))*(d^j)-X);      %求出最后一期看涨期权的可能价值
    end
else                             % 求看跌期权的价值
    for j=0:N
       P(j+1,N+1)=max(0,  X-S0*(u^(N-j))*(d^j)); 
    end
end 

    for j=N:-1:1                  % 从最后一列一直循环至第一列
        for i=1:j                     %从每列开始依次计算前一期
            P(i,j)=exp(-r*dt)*(p*P(i,j+1)+(1-p)*P(i+1,j+1));
        end
    end
price=P(1,1);
end
