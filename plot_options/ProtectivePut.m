%%�����Կ�����Ȩ  �������ʲ���ͬʱ������Ӧ�Ŀ�����Ȩ
function ProtectP=ProtectivePut(S0,ST,X,C)
buyasset=ST-S0;
LP=longput(ST,X,C);
ProtectP=buyasset+LP;