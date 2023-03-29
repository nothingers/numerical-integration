% 定义 x f(x) g(x) 其中g(x)是f(x)的四阶导
syms x f(x) g(x);
f(x) = x*sqrt(1+x^2);
g(x) = diff(f,x,4);
% % 插值 求出g(t)的最大值
 t = 0:1:3;
 m = max(abs(g(t)));
% 复化simpson 公式 误差<10^(-4) 得出等分数n
n = round(1+3/(2^4*(60*10^(-4)/double(m))));
k = 0:(3/n):3;
% 计算 得出积分值
I = double(1/(2*n)*(2*sum(f(k))+4*sum(f(k+1.5/n))-f(0)-f(3)-4*f(3+1.5/n)))
                                       