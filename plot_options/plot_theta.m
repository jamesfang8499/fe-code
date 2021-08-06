%% plot theta
s0=.2:.2:200;
x=45;
sig=.5;
t=1;
r=.03;
[c,p]=blstheta(s0,x,r,t,sig);
plot(s0,c,'blue'); hold on;
plot(s0,p,'red');
plot(xlim, [0,0],'--black');
legend('看涨期权Theta','看跌期权Theta');
xlabel('标的物价格');
ylabel('期权的Theta');
line([x x] , ylim, 'LineStyle','--', 'Color', 'k')
 hold off;


%% 期权的Theta与到期时间之间的关系
subplot(1,2,1)

s0=45;
x1=30;
x2=45;
x3=60;
sig=.5;
t=.01:.001:3;
r=.03;
[c1,p1]=blstheta(s0,x1,r,t,sig);
[c2,p2]=blstheta(s0,x2,r,t,sig);
[c3,p3]=blstheta(s0,x3,r,t,sig);
plot(t,c1,'blue'); hold on;
plot(t,c2,'red');
plot(t,c3,'black');
legend('实值期权','平值期权','虚值期权');
xlabel('距离到期时间');
ylabel('看涨期权的Theta');
hold off; 

subplot(1,2,2)
plot(t,p1,'blue'); hold on;
plot(t,p2,'red');
plot(t,p3,'black');
legend('虚值期权','平值期权','实值期权');
xlabel('距离到期时间');
ylabel('看跌期权的Theta');
hold off;  
 
 

%% 期权的Theta与波动率之间的关系

subplot(1,2,1)
s0=45;
x1=30;
x2=45;
x3=60;
sig=.01:.01:1.5;
t=1;
r=.03;
[c1,p1]=blstheta(s0,x1,r,t,sig);
[c2,p2]=blstheta(s0,x2,r,t,sig);
[c3,p3]=blstheta(s0,x3,r,t,sig);

plot(sig,c1,'blue'); hold on;
plot(sig,c2,'red');
plot(sig,c3,'black');
legend('实值期权','平值期权','虚值期权');
xlabel('波动率');
ylabel('看涨期权的Theta');
hold off; 

subplot(1,2,2)

plot(sig,p1,'blue'); hold on;
plot(sig,p2,'red');
plot(sig,p3,'black');
legend('虚值期权','平值期权','实值期权');
xlabel('波动率');
ylabel('看跌期权的Theta');
hold off;  
 

 %% 期权的Theta与利率之间的关系
subplot(1,2,1)

s0=45;
x1=30;
x2=45;
x3=60;
sig=.5;
t=1;
r=.001:.001:1;
[c1,p1]=blstheta(s0,x1,r,t,sig);
[c2,p2]=blstheta(s0,x2,r,t,sig);
[c3,p3]=blstheta(s0,x3,r,t,sig);
plot(r,c1,'blue'); hold on;
plot(r,c2,'red');
plot(r,c3,'black');
legend('实值期权','平值期权','虚值期权');
xlabel('利率');
ylabel('看涨期权的Theta');
hold off; 

subplot(1,2,2)
plot(r,p1,'blue'); hold on;
plot(r,p2,'red');
plot(r,p3,'black');
legend('虚值期权','平值期权','实值期权');
xlabel('利率');
ylabel('看跌期权的Theta');
hold off;  
 