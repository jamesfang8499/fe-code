CSWAP1 <- function (D_principal, F_principal, n, years, D_rate, F_rate, fx_spot, D_libor, F_libor)
{ # 使用债券组合进行货币互换的估值
  # D_principal: 本币的本金数额
  # F_principal: 外币的本金数额
  # n: 每年计息次数
  # years: 互换的年限
  # D_rate: 互换中本币的利率
  # F_rate: 互换中外币的利率
  # fx_spot: 即期汇率（采用直接标价法，DC/FC）
  # D_libor: 本币的LIBOR利率（假定所有期限的均不变）
  # F_libor: 外币的LIBOR利率（假定所有期限的均不变）
  # V: 货币互换的价值（以本币标示，DC）
  D_interest=D_principal*D_rate/n;
  F_interest=F_principal*F_rate/n;
  npayments=n*years;
  Effperiods = seq(from = 1/n, by = 1/n, length.out = npayments);
  D_discount = exp(-D_libor*Effperiods);
  F_discount = exp(-F_libor*Effperiods); 
  B_D=sum(D_interest*D_discount)+D_principal*D_discount[length(D_discount)];   # 本币债券的价值
  B_F=sum(F_interest*F_discount)+F_principal*F_discount[length(F_discount)];   # 外币债券的价值
  V=B_D-fx_spot*B_F;
  return (V);
}

#EXAMPLE
CSWAP1(D_principal=12, F_principal=0.1, n=1, years=3, D_rate=.05, F_rate=.08, fx_spot=110, D_libor=.04, F_libor=.09)


CSWAP2 <- function (D_principal, F_principal, n, years, D_rate, F_rate, fx_spot, D_libor, F_libor)
{ # 使用远期外汇协议进行货币互换的估值
  D_interest=D_principal*D_rate/n;
  F_interest=F_principal*F_rate/n;
  npayments=n*years;
  Effperiods = seq(from = 1/n, by = 1/n, length.out = npayments);
  D_discount = exp(-D_libor*Effperiods);
  F_discount = exp(-F_libor*Effperiods); 
  forward_fx=fx_spot*exp((D_libor-F_libor)*Effperiods);  # 远期汇率
  forward_interest_payoffs=sum((D_interest-F_interest*forward_fx)*D_discount);  # 远期利息的支付数额（以本币标示，DC）
  forward_principal_payoffs=(D_principal-F_principal*forward_fx[length(Effperiods)])*D_discount[length(Effperiods)]; # 远期本金的支付数额（以本币标示，DC）
  V=forward_interest_payoffs+forward_principal_payoffs;
  return (V);
}

#EXAMPLE
CSWAP2(D_principal=12, F_principal=0.1, n=1, years=3, D_rate=.05, F_rate=.08, fx_spot=110, D_libor=.04, F_libor=.09)
