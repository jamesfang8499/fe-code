function [A,B]=straddle(ST,X,C,P)
LC=longcall(ST,X,C);
LP=longput(ST,X,P);
A=LC+LP;
B=-A;