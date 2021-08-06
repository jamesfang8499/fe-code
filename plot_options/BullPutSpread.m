%% 牛市看跌价差交易
function payoff=BullPutSpread(ST,X1,X2,C1,C2)
  LP=longput(ST,X2,C2);
  SP=shortput(ST,X1,C1);
payoff=LP+SP;