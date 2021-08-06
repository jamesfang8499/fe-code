%% plot vega
s0=.2:.2:100;
x=45;
sig=.5;
t=1;
r=.03;
c=blsvega(s0,x,r,t,sig);
plot(s0,c,'blue'); hold on;
legend('期权Vega');
xlabel('标的物价格');
ylabel('期权的Vega');
line([x x] , ylim, 'LineStyle','--', 'Color', 'k')

 hold off;


%% 期权的Vega与到期时间之间的关系

s0=45;
x1=30;
x2=45;
x3=60;
sig=.5;
t=.1:.01:3;
r=.03;
c1=blsvega(s0,x1,r,t,sig);
c2=blsvega(s0,x2,r,t,sig);
c3=blsvega(s0,x3,r,t,sig);
plot(t,c1,'blue'); hold on;
plot(t,c2,'red');
plot(t,c3,'black');
legend('实值期权','平值期权','虚值期权');
xlabel('距离到期时间');
ylabel('看涨期权的Vega');
hold off; 
 

%% 期权的Vega与波动率之间的关系



s0=45;
x1=30;
x2=45;
x3=60;
sig=.01:.01:1.5;
t=3;
r=.03;
c1=blsvega(s0,x1,r,t,sig);
c2=blsvega(s0,x2,r,t,sig);
c3=blsvega(s0,x3,r,t,sig);


plot(sig,c1,'blue'); hold on;
plot(sig,c2,'red');
plot(sig,c3,'black');
legend('实值期权','平值期权','虚值期权');
xlabel('波动率');
ylabel('看涨期权的Vega');
hold off; 

 

 %% 期权的Vega与利率之间的关系

s0=45;
x1=30;
x2=45;
x3=60;
sig=.5;
t=2;
r=.001:.001:1;
c1=blsvega(s0,x1,r,t,sig);
c2=blsvega(s0,x2,r,t,sig);
c3=blsvega(s0,x3,r,t,sig);

plot(r,c1,'blue'); hold on;
plot(r,c2,'red');
plot(r,c3,'black');
legend('实值期权','平值期权','虚值期权');
xlabel('利率');
ylabel('看涨期权的Vega');
hold off; 