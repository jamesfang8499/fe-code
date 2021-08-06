function payoff=longcall(ST,X,C)
payoff=max(ST-X-C,-C);
