IRSWAP1 <- function (notional, n, fixedrate, lastfloat, spotrates, start) 
{ # Valuation in terms of bond prices
  # notional：名义本金数额
  # n：每年的计息频率
  # fixedrate：固定利率
  # lastfloat：前一次浮动利率数值
  # spotrates：未来若干期浮动利率数值
  # start：从互换估值日，至下次互换开始的时间（单位：月）
  fixedpayment = notional * fixedrate/n;
  npayments = length(spotrates);
  start_y = start/12;
  floatpayment = lastfloat * notional/n;
  Effperiods = seq(from = start_y, by = 1/n, length.out = npayments);
  fixedpayments = rep(fixedpayment, times = npayments);
  Discrates = exp(-spotrates * Effperiods);
  fixval = sum(Discrates * fixedpayments) + notional * Discrates[length(Discrates)];
  floatval = notional*(1+ lastfloat/n) * Discrates[1];
  val = fixval - floatval;
  return (val);
}

# EXAMPLE
IRSWAP1(notional = 1000, n=2, fixedrate = .03, lastfloat = .029, spotrates = c(0.028,.032,.034), start = 3)


IRSWAP2 <- function (notional, n, fixedrate, lastfloat, spotrates, start) 
{ # Valuation in terms of FRAs
  fixedpayment = fixedrate/n;
  npayments = length(spotrates);
  start_y = start/12;
  floatpayment = lastfloat * notional/n;
  Effperiods = seq(from = start_y, by = 1/n, length.out = npayments);  
  fixedpayments = rep(fixedpayment, times = npayments);
  Discrates = exp(-spotrates * Effperiods);
  FRA=c(1:npayments);
  for (i in 2:npayments)
  {
    FRA[i]<- (spotrates[i] * Effperiods[i] - spotrates[i-1] * Effperiods[i-1])/(1/n)    # 远期利率计算
    forward <- n*(exp(FRA/n)-1)   # 将连续复利转化成一年n次的复利
  }
  forward[1]=lastfloat;
  val=sum(notional *(fixedrate-forward)/n*Discrates);
  return (val);
}

# EXAMPLE
IRSWAP2(notional = 1000, n=2, fixedrate = .03, lastfloat = .029, spotrates = c(0.028,.032,.034), start = 3)
