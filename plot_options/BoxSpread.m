%% ºÐ×´¼Û²î½»Ò×
function [A,B]=BoxSpread(ST,X1,X2,C1,C2,P1,P2)
  LC=longcall(ST,X1,C1);
  SC=shortcall(ST,X2,C2);
  SP=shortput(ST,X1,P1);
  LP=longput(ST,X2,P2);  

A=LC+SC+SP+LP;
B=-A;