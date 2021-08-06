%% Delta of call & put options
X=50;
R=0.05;
T=.5;
SIG=.2;
DIV=0;
S=20:.1:80;
[C,P]=blsdelta(S,X,R,T,SIG,DIV);

plot(S,C,'-blue','LineWidth',2);
hold on;
plot(S,P,'-red','LineWidth',2);
legend('call option delta','put option delta');

plot(X,(-1:.01:1),'--black','LineWidth',1);
grid on;
title('Delta vs. Stock price');
line(xlim, [0,0], 'LineStyle','--', 'Color', 'k')
line([X X] , ylim, 'LineStyle','--', 'Color', 'k')
hold off

%% Gamma of call & put options
X=50;
R=0.05;
T=.5;
SIG=.2;
DIV=0;
S=20:.1:100;
GAMMA=blsgamma(S,X,R,T,SIG,DIV);

plot(S,GAMMA,'-blue','LineWidth',2);
legend('option gamma');
line([X X] , ylim, 'LineStyle','--', 'Color', 'k')
grid on;
title('Gamma vs. Stock price');
hold off


%% Rho of call & put options
X=50;
R=0.05;
T=.5;
SIG=.2;
DIV=0;
S=20:.1:80;
[C,P]=blsrho(S,X,R,T,SIG,DIV);

plot(S,C,'-blue','LineWidth',2);
hold on;
plot(S,P,'-red','LineWidth',2);
legend('call option rho','put option rho');
grid on;
plot(xlim,[0 0],'--black');
title('Rho vs. Stock price');
line([X X] , ylim, 'LineStyle','--', 'Color', 'k')
hold off


%% Theta of call & put options
X=50;
R=0.05;
T=.5;
SIG=.2;
DIV=0;
S=20:.1:80;
[C,P]=blstheta(S,X,R,T,SIG,DIV);

plot(S,C,'-blue','LineWidth',2);
hold on;
plot(S,P,'-red','LineWidth',2);
legend('call option theta','put option theta');
grid on;
title('Theta vs. Stock price');
line(xlim, [0,0], 'LineStyle','--', 'Color', 'k')
line([X X] , ylim, 'LineStyle','--', 'Color', 'k')
hold off

%% Vega of call & put options
X=50;
R=0.05;
T=.5;
SIG=.2;
DIV=0;
S=20:.1:100;
VEGA=blsvega(S,X,R,T,SIG,DIV);

plot(S,VEGA,'-blue','LineWidth',2);
hold on;
legend('option vega');
line([X X] , ylim, 'LineStyle','--', 'Color', 'k')
grid on;
title('Vega vs. Stock price');
hold off

