function [cpayoff, ppayoff]=CalendarSpread(S0, X, R, T1, T2, sigma, o1, o2)
[c1,p1]=blsprice(S0, X, R, T1,sigma);
[c2,p2]=blsprice(S0, X, R, T2,sigma);
cpayoff=(c1-o1)+(o2-c2);
ppayoff=(p1-o1)+(o2-p2);


