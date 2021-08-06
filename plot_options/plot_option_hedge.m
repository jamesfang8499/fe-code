%% option hedge
X1=60;
c=5;
p=5;
X2=40;
S=0:.4:80;



%% long call hedge
%long call+short position
payoff1=longcall(S,X1,c);
payoff2=shortpos(S,X2);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);

hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('long call','short position','long call hedge');

 line([X1 X1] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% short call hedge
%short call+long position
payoff1=shortcall(S,X1,c);
payoff2=longpos(S,X2);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);

legend('short call','long position','short call hedge');
 line([X1 X1] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% long put hedge
%long put+long position
payoff1=longput(S,X1,p);
payoff2=longpos(S,X2);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('long put','long position','long put hedge');

 line([X1 X1] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','--', 'Color', 'k');
hold off;



%% short put hedge
%short put+short position
payoff1=shortput(S,X2,p);
payoff2=shortpos(S,X1);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('short put','short position','short put hedge');
 line([X2 X2] ,ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;