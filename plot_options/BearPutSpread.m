%% 熊市看跌价差交易
function payoff=BearPutSpread(ST,X1,X2,C1,C2)
  LP=longput(ST,X1,C1);
  SP=shortput(ST,X2,C2);
payoff=LP+SP;