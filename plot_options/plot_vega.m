%% plot vega
s0=.2:.2:100;
x=45;
sig=.5;
t=1;
r=.03;
c=blsvega(s0,x,r,t,sig);
plot(s0,c,'blue'); hold on;
legend('��ȨVega');
xlabel('�����۸�');
ylabel('��Ȩ��Vega');
line([x x] , ylim, 'LineStyle','--', 'Color', 'k')

 hold off;


%% ��Ȩ��Vega�뵽��ʱ��֮��Ĺ�ϵ

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
legend('ʵֵ��Ȩ','ƽֵ��Ȩ','��ֵ��Ȩ');
xlabel('���뵽��ʱ��');
ylabel('������Ȩ��Vega');
hold off; 
 

%% ��Ȩ��Vega�벨����֮��Ĺ�ϵ



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
legend('ʵֵ��Ȩ','ƽֵ��Ȩ','��ֵ��Ȩ');
xlabel('������');
ylabel('������Ȩ��Vega');
hold off; 

 

 %% ��Ȩ��Vega������֮��Ĺ�ϵ

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
legend('ʵֵ��Ȩ','ƽֵ��Ȩ','��ֵ��Ȩ');
xlabel('����');
ylabel('������Ȩ��Vega');
hold off; 