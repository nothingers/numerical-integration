syms x f(x);
 f(x) = x*sqrt(1+x^2);
 B = zeros(100,100);
for i = 1:100
    n = 2^(i);
    k = 0:3/n:3;
    B(i,1) = 1/2*3/n*(2*sum(f(k))-f(0)-f(3));
    for j = 1:i;
        if j > 1
            B(i,j) = (4^j)/(4^j-1)*B(i,j-1)-1/(4^j-1)*B(i-1,j-1);
        end
    end
        if i >1
            if abs (B(i,i)-B(i-1,i-1)) < 10^(-4)
                break;
            end
        end
    
 end
        I = B(i,i)