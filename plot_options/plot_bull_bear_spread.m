%% plot bull call spread
X1=45;
X2=53;
C1=6;
C2=3;
ST=40:1:60;
   plot(ST,longcall(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortcall(ST,X2,C2),'-black','LineWidth',2);
   plot(ST,BullCallSpread(ST,X1,X2,C1,C2),'-red','LineWidth',2);
   title('牛市看涨价差');
legend('long call','short call','bull call spread');
   line([X1 X1], ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off

%% plot bear call spread
X1=45;
X2=53;
C1=6;
C2=3
ST=40:1:60;
   plot(ST,longcall(ST,X2,C2),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortcall(ST,X1,C1),'-black','LineWidth',2);
   plot(ST,BearCallSpread(ST,X1,X2,C1,C2),'-red','LineWidth',2);
      title('熊市看涨价差');
legend('long call','short call','bear call spread');
   line([X1 X1], ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off


%% plot bull put spread
X1=45;
X2=53;
C1=3;
C2=5;
ST=30:1:60;
   plot(ST,longput(ST,X2,C2),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X1,C1),'-black','LineWidth',2);
   plot(ST,BullPutSpread(ST,X1,X2,C1,C2),'-red','LineWidth',2);
   plot(ST,0,'--black');
   title('牛市看跌价差');
legend('long put','short put','bull put spread');

   line([X1 X1], ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off


%% plot bear put spread
X1=45;
X2=53;
C1=3;
C2=5;
ST=30:1:60;
   plot(ST,longput(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X2,C2),'-black','LineWidth',2);
   plot(ST,BearPutSpread(ST,X1,X2,C1,C2),'-red','LineWidth',2);
   plot(ST,0,'--black');
      title('熊市看跌价差');
legend('long put','short put','bear put spread');

   line([X1 X1], ylim, 'LineStyle','--', 'Color', 'k');
   line([X2 X2], ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','-.', 'Color', 'k');
hold off






