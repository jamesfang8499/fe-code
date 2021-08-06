%% plot long straddle
X=50;
C=5;
P=3;
ST=35:.1:70;
   plot(ST,longcall(ST,X,C),'--blue','LineWidth',2);
      hold on;
   plot(ST,longput(ST,X,P),'-black','LineWidth',2);
    [A,B]=straddle(ST,X,C,P);
  
   plot(ST,A,'-red','LineWidth',2);
  
legend('long call','long put','long straddle');
title('买入跨式策略');

line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% plot short straddle
X=50;
C=5;
P=3;
ST=35:.1:70;
   plot(ST,shortcall(ST,X,C),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X,P),'-black','LineWidth',2);
    [A,B]=straddle(ST,X,C,P);
	  
   plot(ST,B,'-red','LineWidth',2);
   
legend('short call','short put','short straddle');
title('卖出跨式策略');

line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;