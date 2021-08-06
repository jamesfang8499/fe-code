function M=Implied_VOL(C, S0, X, r, T, arg, q)
% �������������ʵĴ���
% MATLAB���ڹ������У���blsimpv����������ʵ����ͬ�Ĺ���

%{ 
Example:
S0=100;      X=95;     T=1;   arg=0;
r=0.02;    q=0.01;    C=7.73;
M=Implied_VOL(C, S0, X, r, T, arg, q)
% ������������������ʲ��۸�Ϊ100����Ȩ��95����Ȩ��7.73��ʣ������1�꣬
% �޷���������2%����Ϣ��1%��ŷʽ�ֻ�������Ȩ���������ʡ�
%}




A=0;     % �趨�������޵ĳ�ֵ
B=10;     % �趨�������޵ĳ�ֵ
M=(B+A)/2;      %�����������ֵ
precision = 1e-6;     % �趨����ľ���
arg=0;      % ȡ0�ǿ�����Ȩ�������ǿ�����Ȩ

% �޽��ж�
if (C-BSprice(S0,X,r,T,B,arg,q))*(C-BSprice(S0,X,r,T,A,arg,q))>0
    disp('�޽⣡�����ԡ�');
    return
end

% ʹ������ѭ��ʵ��ţ�ٶ��ַ�
while abs(C-BSprice(S0,X,r,T,M,arg,q))> precision
   if C>BSprice(S0,X,r,T,M,arg,q);
       A=M;
       M=(B+A)/2;
   else
       B=M;
       M=(B+A)/2;
   end
end
M=(B+A)/2;
end

% Black-Scholesģ�ͺ���
function price = BSprice(s0,x,r,t,sig,arg,q)
 [c,p]=blsprice(s0,x,r,t,sig,q);
if arg==0;      % ��Կ�����Ȩ
    price=c;
else           %  ��Կ�����Ȩ
    price=p;
end
end
