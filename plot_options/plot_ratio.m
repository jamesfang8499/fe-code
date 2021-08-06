%% plot ratio spread

ST=45:.1:65;
X1=50;
X2=55;
n1=1;
n2=2;
C1=3;
C2=2.5;

plot(ST,longcall(ST,X1,C1),'--blue','LineWidth',2);
hold on;
   plot(ST,shortcall(ST,X2,C2),'-black','LineWidth',2);
   
A=n1*longcall(ST,X1,C1)+n2*shortcall(ST,X2,C2);
plot(ST, A,'-red','LineWidth',3); 
legend('long call','short call','ratio call spread');

X=[X1 X2]';
line([X X]' , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;


%% plot reverse ratio spread

ST=45:.1:65;
X1=50;
X2=55;
n1=1;
n2=2;
C1=3;
C2=2.5;

plot(ST,shortcall(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,longcall(ST,X2,C2),'-black','LineWidth',2);
   
A=n1*shortcall(ST,X1,C1)+n2*longcall(ST,X2,C2);
      
plot(ST, A,'-red','LineWidth',3); 
  
legend('short call','long call','reverse ratio call spread');
X=[X1 X2]';
line([X X]' , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;






%% plot ratio spread
ST=40:.1:65;
X1=50;
X2=55;
n1=2;
n2=1;
C1=3;
C2=4;

plot(ST,shortput(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,longput(ST,X2,C2),'-black','LineWidth',2);
B=n1*shortput(ST,X1,C1)+n2*longput(ST,X2,C2);

plot(ST, B,'-red','LineWidth',3);

legend('short put','long put','ratio put spread');

X=[X1 X2]';
line([X X]' , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;
%% plot reverse ratio spread

ST=35:.1:65;
X1=50;
X2=55;
n1=2;
n2=1;
C1=3;
C2=4;

plot(ST,longput(ST,X1,C1),'--blue','LineWidth',2);
      hold on;
   plot(ST,shortput(ST,X2,C2),'-black','LineWidth',2);
B=n1*longput(ST,X1,C1)+n2*shortput(ST,X2,C2);

plot(ST, B,'-red','LineWidth',3);

legend('long put','short put','reverse ratio put spread');
X=[X1 X2]';
line([X X]' , ylim, 'LineStyle','--', 'Color', 'k');
  line(xlim , [0 0], 'LineStyle','--', 'Color', 'k');
hold off;