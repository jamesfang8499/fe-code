%% plot eagle call spread 1
X1=260;
X21=270;
X22=280;
X3=290;
C1=16;
C21=9;
C22=4;
C3=2;
ST=250:.5:300;
   plot(ST,longcall(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortcall(ST,X21,C21),'-black','LineWidth',2);
   plot(ST,shortcall(ST,X22,C22),'-magenta','LineWidth',2);
   plot(ST,longcall(ST,X3,C3),'-cyan','LineWidth',2);
   [A,B]=EagleCallSpread(ST,X1,X21,X22,X3,C1,C21,C22,C3);
   
   plot(ST,A,'-red','LineWidth',2);

legend('long call','short call','short call','long call','eagle call spread');

X=[X1 X21 X22 X3]';
 line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;






%% plot eagle call spread 2  
X1=260;
X21=270;
X22=280;
X3=290;
C1=16;
C21=9;
C22=4;
C3=2;
ST=250:.5:300;
   plot(ST,shortcall(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,longcall(ST,X21,C21),'-black','LineWidth',2);
   plot(ST,longcall(ST,X22,C22),'-magenta','LineWidth',2);
   plot(ST,shortcall(ST,X3,C3),'-cyan','LineWidth',2);
   [A,B]=EagleCallSpread(ST,X1,X21,X22,X3,C1,C21,C22,C3);
      
   plot(ST,B,'-red','LineWidth',2);


legend('short call','long call','long call','short call','eagle call spread');
X=[X1 X21 X22 X3]';
 line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% plot eagle put spread 1
X1=260;
X21=270;
X22=280;
X3=290;
C1=16;
C21=9;
C22=4;
C3=2;
ST=240:.5:300;
   plot(ST,longput(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X21,C21),'-black','LineWidth',2);
      plot(ST,shortput(ST,X22,C22),'-magenta','LineWidth',2);
   plot(ST,longput(ST,X3,C3),'-cyan','LineWidth',2);
   [A,B]=EaglePutSpread(ST,X1,X21,X22,X3,C1,C21, C22,C3);
   
   plot(ST,A,'-red','LineWidth',2);

legend('long put','short put','short put','long put','eagle put spread');
X=[X1 X21 X22 X3]';
 line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;
   
   
%% plot eagle put spread 2  
X1=260;
X21=270;
X22=280;
X3=290;
C1=16;
C21=9;
C22=4;
C3=2;
ST=240:.5:300;
   plot(ST,shortput(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,longput(ST,X21,C21),'-black','LineWidth',2);
   plot(ST,longput(ST,X22,C22),'-magenta','LineWidth',2);
   plot(ST,shortput(ST,X3,C3),'-cyan','LineWidth',2);
   [A,B]=EaglePutSpread(ST,X1,X21,X22,X3,C1,C21, C22,C3);
      
  plot(ST,B,'-red','LineWidth',2);
      
legend('short put','long put','long put','short put','eagle put spread');

X=[X1 X21 X22 X3]';
 line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;
   



