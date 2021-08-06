%% plot rho
s0=.2:.2:150;
x=45;
sig=.5;
t=1;
r=.03;
[c,p]=blsrho(s0,x,r,t,sig);
plot(s0,c,'blue'); hold on;
plot(s0,p,'red');
plot(xlim, [0,0],'--black');

plot([x,x], ylim,'--black');
legend('������ȨRho','������ȨRho');
xlabel('�����۸�');
ylabel('��Ȩ��Rho');
 hold off;


%% ��Ȩ��Rho�뵽��ʱ��֮��Ĺ�ϵ
subplot(1,2,1)

s0=45;
x1=30;
x2=45;
x3=60;
sig=.5;
t=.01:.001:3;
r=.03;
[c1,p1]=blsrho(s0,x1,r,t,sig);
[c2,p2]=blsrho(s0,x2,r,t,sig);
[c3,p3]=blsrho(s0,x3,r,t,sig);
plot(t,c1,'blue'); hold on;
plot(t,c2,'red');
plot(t,c3,'black');
legend('ʵֵ��Ȩ','ƽֵ��Ȩ','��ֵ��Ȩ');
xlabel('���뵽��ʱ��');
ylabel('������Ȩ��Rho');
hold off; 

subplot(1,2,2)
plot(t,p1,'blue'); hold on;
plot(t,p2,'red');
plot(t,p3,'black');
legend('��ֵ��Ȩ','ƽֵ��Ȩ','ʵֵ��Ȩ');
xlabel('���뵽��ʱ��');
ylabel('������Ȩ��Rho');
hold off;  
 
 

%% ��Ȩ��Rho�벨����֮��Ĺ�ϵ

subplot(1,2,1)

s0=45;
x1=30;
x2=45;
x3=60;
sig=.01:.01:3;
t=1;
r=.03;
[c1,p1]=blsrho(s0,x1,r,t,sig);
[c2,p2]=blsrho(s0,x2,r,t,sig);
[c3,p3]=blsrho(s0,x3,r,t,sig);


plot(sig,c1,'blue'); hold on;
plot(sig,c2,'red');
plot(sig,c3,'black');
legend('ʵֵ��Ȩ','ƽֵ��Ȩ','��ֵ��Ȩ');
xlabel('������');
ylabel('������Ȩ��Rho');
hold off; 

subplot(1,2,2)

plot(sig,p1,'blue'); hold on;
plot(sig,p2,'red');
plot(sig,p3,'black');
legend('��ֵ��Ȩ','ƽֵ��Ȩ','ʵֵ��Ȩ');
xlabel('������');
ylabel('������Ȩ��Rho');
hold off;  
 

 %% ��Ȩ��Rho������֮��Ĺ�ϵ
subplot(1,2,1)

s0=45;
x1=30;
x2=45;
x3=60;
sig=.5;
t=1;
r=.001:.001:1;
[c1,p1]=blsrho(s0,x1,r,t,sig);
[c2,p2]=blsrho(s0,x2,r,t,sig);
[c3,p3]=blsrho(s0,x3,r,t,sig);
plot(r,c1,'blue'); hold on;
plot(r,c2,'red');
plot(r,c3,'black');
legend('ʵֵ��Ȩ','ƽֵ��Ȩ','��ֵ��Ȩ');
xlabel('����');
ylabel('������Ȩ��Rho');
hold off; 

subplot(1,2,2)
plot(r,p1,'blue'); hold on;
plot(r,p2,'red');
plot(r,p3,'black');
legend('��ֵ��Ȩ','ƽֵ��Ȩ','ʵֵ��Ȩ');
xlabel('����');
ylabel('������Ȩ��Rho');
hold off;  
 