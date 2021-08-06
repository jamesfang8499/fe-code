%% plot butterfly call spread 1
X1=45;
X2=50;
X3=53;
C1=6;
C2=4;
C3=5;
ST=40:.5:60;
   plot(ST,longcall(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortcall(ST,X2,C2),'-black','LineWidth',2);
   plot(ST,longcall(ST,X3,C3),'-cyan','LineWidth',2);
   [A,B]=ButterflyCallSpread(ST,X1,X2,X3,C1,C2,C3);
   
   plot(ST,A,'-red','LineWidth',2);
 %  title('蝶式看涨价差1');
legend('long call','short call','long call','butterfly call spread');
   line([X1 X1], ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
      line([X3 X3], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off
 
   
   
%% plot butterfly call spread 2  
X1=45;
X2=50;
X3=53;
C1=6;
C2=4;
C3=5;
ST=40:.5:60;
   plot(ST,shortcall(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,longcall(ST,X2,C2),'-black','LineWidth',2);
   plot(ST,shortcall(ST,X3,C3),'-cyan','LineWidth',2);
   [A,B]=ButterflyCallSpread(ST,X1,X2,X3,C1,C2,C3);
   plot(ST,B,'-red','LineWidth',2);
 %  title('蝶式看涨价差2');
legend('short call','long call','short call','butterfly call spread');
 
line([X1 X1], ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
      line([X3 X3], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off
   
%% plot butterfly put spread 1
X1=45;
X2=50;
X3=53;
C1=3;
C2=4;
C3=6.5;
ST=40:.5:60;
   plot(ST,longput(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X2,C2),'-black','LineWidth',2);
   plot(ST,longput(ST,X3,C3),'-cyan','LineWidth',2);
   [A,B]=ButterflyPutSpread(ST,X1,X2,X3,C1,C2,C3);
   
   plot(ST,A,'-red','LineWidth',2);
%   title('蝶式看跌价差1');
legend('long put','short put','long put','butterfly put spread');
   line([X1 X1], ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
      line([X3 X3], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off
%% plot butterfly put spread 2  
X1=45;
X2=50;
X3=53;
C1=3;
C2=4;
C3=6.5;
ST=40:.5:60;
   plot(ST,shortput(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,longput(ST,X2,C2),'-black','LineWidth',2);
   plot(ST,shortput(ST,X3,C3),'-cyan','LineWidth',2);
   [A,B]=ButterflyPutSpread(ST,X1,X2,X3,C1,C2,C3);
      
   plot(ST,B,'-red','LineWidth',2);

   %title('蝶式看跌价差2');
legend('short put','long put','short put','butterfly put spread');
   line([X1 X1],ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
      line([X3 X3], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off




