%%���ҿ�����Ȩ  �������ʲ���ͬʱ�������Ӧ�Ŀ�����Ȩ
function CoveredC=CoveredCall(S0,ST,X,C)
buyasset=ST-S0;
SC=shortcall(ST,X,C);
CoveredC=buyasset+SC;