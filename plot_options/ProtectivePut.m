%%保护性看跌期权  买入标的资产，同时买进相对应的看跌期权
function ProtectP=ProtectivePut(S0,ST,X,C)
buyasset=ST-S0;
LP=longput(ST,X,C);
ProtectP=buyasset+LP;