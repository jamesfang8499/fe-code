function [A,B]=ratiospread(ST,X1,X2,n1,n2,C1,C2)
LC=longcall(ST,X1,C1);
SC=shortcall(ST,X2,C2);
LP=longput(ST,X1,C1);
SP=shortput(ST,X2,C2);
A=n1*LC+n2*SC;
B=n1*LP+n2*SP;