% ���� x f(x) g(x) ����g(x)��f(x)���Ľ׵�
syms x f(x) g(x);
f(x) = x*sqrt(1+x^2);
g(x) = diff(f,x,4);
% % ��ֵ ���g(t)�����ֵ
 t = 0:1:3;
 m = max(abs(g(t)));
% ����simpson ��ʽ ���<10^(-4) �ó��ȷ���n
n = round(1+3/(2^4*(60*10^(-4)/double(m))));
k = 0:(3/n):3;
% ���� �ó�����ֵ
I = double(1/(2*n)*(2*sum(f(k))+4*sum(f(k+1.5/n))-f(0)-f(3)-4*f(3+1.5/n)))
                                       