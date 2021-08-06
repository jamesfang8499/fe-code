%% synthetic strategy

c=5;
p=3;
X=50;
S=0:.4:80;



%% synthetic long position 
S=20:.4:80;
payoff1=longcall(S,X,c);
payoff2=shortput(S,X,p);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('long call','short put','synthetic long position');
plot(xlim, [0,0], '--black');
plot([X,X], ylim, '--black');

hold off

%% synthetic short position
S=20:.4:80;
payoff1=shortcall(S,X,c);
payoff2=longput(S,X,p);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('short call','long put','synthetic short position');
plot(xlim, [0,0], '--black');
plot([X,X], ylim, '--black')
hold off


%% synthetic long call
%subplot(121)

p=5;
X=100;
S=85:.4:115;

payoff1=longpos(S,X,c);
payoff2=longput(S,X,p);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);

legend('long position','long put','synthetic long call');
plot(xlim, [0,0], '--black');
plot([X,X], ylim, '--black');

hold off


%% synthetic short call

%subplot(121)

p=5;
X=100;
S=85:.4:115;
payoff1=shortpos(S,X,c);
payoff2=shortput(S,X,p);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);

legend('short position','short put','synthetic short call');
plot(xlim, [0,0], '--black');
plot([X,X], ylim, '--black');

hold off


%% synthetic long put
%subplot(122)

c=5;
X=100;
S=85:.4:115;

payoff1=shortpos(S,X,c);
payoff2=longcall(S,X,c);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('short position','long call','synthetic long put');
plot(xlim, [0,0], '--black');
plot([X,X], ylim, '--black');
hold off


%% synthetic short put
%subplot(122)
c=5;
X=100;
S=85:.4:115;
payoff1=longpos(S,X,c);
payoff2=shortcall(S,X,p);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('long position','short call','synthetic short put');
plot(xlim, [0,0], '--black');
plot([X,X], ylim, '--black');
hold off

