%% ���п��Ǽ۲��
function payoff=BearCallSpread(ST,X1,X2,C1,C2)
  LC=longcall(ST,X2,C2);
  SC=shortcall(ST,X1,C1);
payoff=LC+SC;