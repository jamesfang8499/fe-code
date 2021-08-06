%% 绘制看涨期权日历价差的盈亏图

X=30;
S0=0:.1:60;
R=.05;
T1=1;
T2=0;
sigma=.3;
C1=15;    %long premium
C2=12.5;    %short premium
[c1,p1]=blsprice(S0,X,R,T1,sigma);
[c2,p2]=blsprice(S0,X,R,T2,sigma);
[c,p]=CalendarSpread(S0,X,R,T1,T2,sigma,C1,C2);

payoff1=c1-C1;    %long
payoff2=C2-c2;    %short

plot(S0, payoff1, '-blue', 'LineWidth',1);
hold on;
plot(S0, payoff2, '-.black', 'LineWidth',1);
plot(S0, c, '-red', 'LineWidth',2);
legend('long call','short call','calendar spread');
title('用看涨期权组成的日历价差');

   line([X X], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','--', 'Color', 'k');
hold off



%% 绘制看跌期权日历价差的盈亏图

X=30;
S0=0:.1:60;
R=.05;
T1=1;
T2=0;
sigma=.8;
P1=8;    %long premium
P2=3;    %short premium
[c,p]=CalendarSpread(S0,X,R,T1,T2,sigma,P1,P2);
[c1,p1]=blsprice(S0,X,R,T1,sigma);
[c2,p2]=blsprice(S0,X,R,T2,sigma);

payoff1=p1-P1;    %long
payoff2=P2-p2;    %short

plot(S0, payoff1, '-blue', 'LineWidth',1);
hold on;
plot(S0, payoff2, '-.black', 'LineWidth',1);
plot(S0, p, '-red', 'LineWidth',2);

legend('long put','short put','calendar spread');
title('用看跌期权组成的日历价差');

   line([X X], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','--', 'Color', 'k');
hold off


