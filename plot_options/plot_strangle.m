%% plot long strangle
X1=50;
X2=55;
C=8;
P=3;
ST=40:.1:65;
   plot(ST,longcall(ST,X1,C),'--blue','LineWidth',2);
      hold on;
   plot(ST,longput(ST,X2,P),'-black','LineWidth',2);
    [A,B]=strangle(ST,X1,X2,C,P);
	  
   plot(ST,A,'-red','LineWidth',2);
   
legend('long call','long put','long strangle');
title('买入宽跨式策略');

X=[X1 X2]';
line([X X]' , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% plot short strangle
X1=50;
X2=55;
C=8;
P=3;
ST=40:.1:65;
   plot(ST,shortcall(ST,X1,C),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X2,P),'-black','LineWidth',2);
    [A,B]=strangle(ST,X1,X2,C,P);
	  
   plot(ST,B,'-red','LineWidth',2);

   
legend('short call','short put','short strangle');
title('卖出宽跨式策略');
X=[X1 X2]';
line([X X]' , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;