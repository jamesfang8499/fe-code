function result= mc_call(S, X, r, tau, sigma, M, N)
    %  S 是标的资产当前价格；X 是期权的协定价格
    %  r 是无风险利率；tau 是期权的到期时间（tau=T-t）
    %  sigma 是标的资产波动率；M 是每条路径的分段数
    %  N 是模拟的路径数量
  dt=tau/M;
  s=zeros(M+1,N);   % s用于存储每条路径中的各个价格
  s(1,:)=S;    % 价格路径的初始值就是当前时刻标的资产价格S
  % 以下代码模拟资产价格变动的可能路径，每条路径分成M段，共模拟N条路径
  for j=1:N
    for i=2:M+1 
      s(i,j)=s(i-1,j)*(1+r*dt+sigma*sqrt(dt)*randn);
    end
  end
    %  得到每条路径下的可能支付
  payoff = max(s(end,:)-X,0);
    %  将所有可能支付数值求均值，并进行贴现，得到看涨期权当前价格的数值解
  result = exp(-r*tau)*mean(payoff) ;
