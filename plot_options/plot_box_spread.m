%% plot box spread
X1=50;
X2=60;

C1=3; P1=1;
C2=2; P2=4;

ST=40:.5:70;
   plot(ST,longcall(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortcall(ST,X2,C2),'-black','LineWidth',2);
   plot(ST,shortput(ST,X1,P1),'-magenta','LineWidth',2);
   plot(ST,longput(ST,X2,P2),'-cyan','LineWidth',2);
   [A,B]=BoxSpread(ST,X1,X2,C1,C2,P1,P2);
   
   plot(ST,A,'-red','LineWidth',4);
      
legend('long call','short call','short put','long put','box spread');

   line([X1 X1], ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off