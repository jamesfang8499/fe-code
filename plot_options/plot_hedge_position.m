%% plot covered call
X=50;
C=3;
S0=45;
ST=40:.1:60;
   plot(ST,ST-S0,'--blue','LineWidth',2);
      hold on;
   plot(ST,shortcall(ST,X,C),'-black','LineWidth',2);
   plot(ST,CoveredCall(S0,ST,X,C),'-red','LineWidth',2);
   plot([X,X],ylim,'--black');
   plot(xlim,[0,0],'--black');
   
legend('buy asset','short call','covered call');
title('Covered Call = Long Stock + Short Call');

 line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;
   


%% plot protective put
X=50;
C=3;
S0=45;
ST=40:.1:60;
   plot(ST,ST-S0,'--blue','LineWidth',2);
      hold on;
   plot(ST,longput(ST,X,C),'-black','LineWidth',2);
   plot(ST,ProtectivePut(S0,ST,X,C),'-red','LineWidth',2);
   plot([X,X], ylim,'--black');
   plot(xlim,[0,0],'--black');
   
legend('buy asset','long put','protective put');
title('Protective Put = Long Stock + Long Put');
 line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;



%%