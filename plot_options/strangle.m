function [A,B]=strangle(ST,X1,X2,C,P)
LC=longcall(ST,X1,C);
LP=longput(ST,X2,P);
A=LC+LP;
B=-A;