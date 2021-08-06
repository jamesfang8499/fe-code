%% plotting LONG call
X=50;
C=2;
ST=40:0.05:60;
plot(ST,longcall(ST,X,C));
hold on;
line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% plotting LONG put
X=50;
P=2;
ST=40:0.05:60;
plot(ST,longput(ST,X,P));
hold on;
line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% plotting SHORT call
X=50;
C=2;
ST=40:0.05:60;
plot(ST,shortcall(ST,X,C));
hold on;
line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% plotting SHORT put
X=50;
P=2;
ST=40:0.05:60;
plot(ST,shortput(ST,X,P));
hold on;
line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim, [0 0], 'LineStyle','--', 'Color', 'k');
hold off;







