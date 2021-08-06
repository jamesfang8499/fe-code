%%

S=0:.5:60;
X1=35;
X2=25;
payoff1=shortcall(S,X1,4);
payoff2=longput(S,X2,4);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('short call','long put','zero-cost collar');
X=[X1 X2]';
line([X X]' , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;


%%

S=0:.5:60;
X1=35;
X2=25;
payoff1=longcall(S,X1,4);
payoff2=shortput(S,X2,4);
payoff3=payoff1+payoff2;
plot(S, payoff1, '-blue', 'LineWidth',1.5);hold on;
plot(S, payoff2, '-cyan', 'LineWidth',1.5);
plot(S, payoff3, '-red', 'LineWidth',2.5);
legend('long call','short put','zero-cost collar');

X=[X1 X2]';
line([X X]' , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;
