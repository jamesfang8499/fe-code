%% 看涨飞鹰式价差交易
function [A,B]=eaglecallspread(ST,X1,X21,X22,X3,C1,C21,C22,C3)
  LC1=longcall(ST,X1,C1);
  SC1=shortcall(ST,X21,C21);
  SC2=shortcall(ST,X22,C22);
  LC2=longcall(ST,X3,C3);  

A=LC1+SC1+SC2+LC2;
B=-A;