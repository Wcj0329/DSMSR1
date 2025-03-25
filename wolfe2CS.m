function [alpha] = wolfe2(x,dk,A,b,mu,lambda)
alpha = 1;
delta=1e-3;
rho=0.99;
a = 0;
b1 = Inf;
gd = gradfun(x,A,b,mu,lambda)'*dk;
fx = fun(x,A,b,mu);
kk = 0;
kkk = 0;

while 1
    x1=x+alpha*dk;
    if ~(fun(x1,A,b,mu)<=fx+delta*alpha*gd)
        b1 = alpha;
        alpha = (alpha+a)/2;
        kk = kk + 1;

        if kk > 10000
            alpha = 0;
            break;
        end

        continue;
    end
    if ~((gradfun(x1,A,b,mu,lambda)')*dk >= rho*gd)
        a = alpha;
        alpha = min([2*alpha, (b1+alpha)/2]);
        kkk = kkk + 1;

        if kkk > 10000
            alpha = 0;
            break;
        end
        
        continue;
    end
    break;
end
