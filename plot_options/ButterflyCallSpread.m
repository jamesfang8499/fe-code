%% 看涨蝶式价差交易
function [A,B]=butterflycallspread(ST,X1,X2,X3,C1,C2,C3)
  LC1=longcall(ST,X1,C1);
  SC=shortcall(ST,X2,C2);
  LC2=longcall(ST,X3,C3);  

A=LC1+2*SC+LC2;
B=-A;