function payoff=shortcall(ST,X,C)
payoff=min(X-ST+C,C);
