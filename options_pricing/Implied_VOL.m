function M=Implied_VOL(C, S0, X, r, T, arg, q)
% 计算隐含波动率的代码
% MATLAB金融工具箱中，有blsimpv函数，可以实现相同的功能

%{ 
Example:
S0=100;      X=95;     T=1;   arg=0;
r=0.02;    q=0.01;    C=7.73;
M=Implied_VOL(C, S0, X, r, T, arg, q)
% 上述代码用于求解标的资产价格为100，行权价95，期权费7.73，剩余期限1年，
% 无风险年利率2%，股息率1%的欧式现货看涨期权隐含波动率。
%}




A=0;     % 设定迭代下限的初值
B=10;     % 设定迭代上限的初值
M=(B+A)/2;      %迭代区间的中值
precision = 1e-6;     % 设定运算的精度
arg=0;      % 取0是看涨期权，否则是看跌期权

% 无解判定
if (C-BSprice(S0,X,r,T,B,arg,q))*(C-BSprice(S0,X,r,T,A,arg,q))>0
    disp('无解！请重试。');
    return
end

% 使用条件循环实现牛顿二分法
while abs(C-BSprice(S0,X,r,T,M,arg,q))> precision
   if C>BSprice(S0,X,r,T,M,arg,q);
       A=M;
       M=(B+A)/2;
   else
       B=M;
       M=(B+A)/2;
   end
end
M=(B+A)/2;
end

% Black-Scholes模型函数
function price = BSprice(s0,x,r,t,sig,arg,q)
 [c,p]=blsprice(s0,x,r,t,sig,q);
if arg==0;      % 针对看涨期权
    price=c;
else           %  针对看跌期权
    price=p;
end
end
