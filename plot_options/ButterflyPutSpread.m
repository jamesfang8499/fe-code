%% 看跌蝶式价差交易
function [A,B]=butterflyputspread(ST,X1,X2,X3,C1,C2,C3)
  LC1=longput(ST,X1,C1);
  SC=shortput(ST,X2,C2);
  LC2=longput(ST,X3,C3);  

A=LC1+2*SC+LC2;
B=-A;