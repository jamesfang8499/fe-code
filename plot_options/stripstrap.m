function [A,B]=stripstrap(ST,X,n1,n2,C,P)
LC=longcall(ST,X,C);
LP=longput(ST,X,P);
A=n1*LC+n2*LP;
B=-A;