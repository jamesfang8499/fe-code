%% 看跌飞鹰式价差交易
function [A,B]=eagleputspread(ST,X1,X21,X22,X3,C1,C21,C22,C3)
  LC1=longput(ST,X1,C1);
  SC1=shortput(ST,X21,C21);
   SC2=shortput(ST,X22,C22);
  LC2=longput(ST,X3,C3);  

A=LC1+SC2+SC1+LC2;
B=-A;