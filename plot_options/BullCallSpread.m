%% 牛市看涨价差交易
function payoff=BullCallSpread(ST,X1,X2,C1,C2)
  LC=longcall(ST,X1,C1);
  SC=shortcall(ST,X2,C2);
payoff=LC+SC;