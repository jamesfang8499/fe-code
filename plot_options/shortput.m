function payoff=shortput(ST,X,P)
payoff=min(-X+ST+P,P);
