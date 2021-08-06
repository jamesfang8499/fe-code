%%备兑看涨期权  买入标的资产，同时卖出相对应的看涨期权
function CoveredC=CoveredCall(S0,ST,X,C)
buyasset=ST-S0;
SC=shortcall(ST,X,C);
CoveredC=buyasset+SC;