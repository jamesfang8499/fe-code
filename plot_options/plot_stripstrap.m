%% plot long strip
X=50;
n1=1;
n2=2;
C=8;
P=3;
ST=20:.1:80;
   plot(ST,longcall(ST,X,C),'--blue','LineWidth',2);
      hold on;
   plot(ST,longput(ST,X,P),'-black','LineWidth',2);
    [A,B]=stripstrap(ST,X,n1,n2,C,P);
	  
   plot(ST,A,'-red','LineWidth',2);

legend('long call','long put','long strip');
title('买入条式组合');

line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;


%% plot long strap
X=50;
n1=2;
n2=1;
C=8;
P=3;
ST=20:.1:80;
   plot(ST,longcall(ST,X,C),'--blue','LineWidth',2);
      hold on;
   plot(ST,longput(ST,X,P),'-black','LineWidth',2);
    [A,B]=stripstrap(ST,X,n1,n2,C,P);
	  
   plot(ST,A,'-red','LineWidth',2);

legend('long call','long put','long strap');
title('买入带式组合');

line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% plot short strip
X=50;
n1=1;
n2=2;
C=8;
P=3;
ST=20:.1:80;
   plot(ST,shortcall(ST,X,C),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X,P),'-black','LineWidth',2);
    [A,B]=stripstrap(ST,X,n1,n2,C,P);
 
   plot(ST,B,'-red','LineWidth',2);

legend('short call','short put','short strip');
title('卖出条式组合');

line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;

%% plot short strap
X=50;
n1=2;
n2=1;
C=8;
P=3;
ST=20:.1:80;
   plot(ST,shortcall(ST,X,C),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X,P),'-black','LineWidth',2);
    [A,B]=stripstrap(ST,X,n1,n2,C,P);
	  
   plot(ST,B,'-red','LineWidth',2);

legend('short call','short put','short strap');
title('卖出带式组合');

line([X X] , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;