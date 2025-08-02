function [alpha,nf,ng] = wolfe2(x,dk,nf,ng,z)
alpha = 1;
delta=1e-3;
rho=0.99;
a = 0;
b = Inf;
gd = gradfun(x,z)'*dk;
fx = fun(x,z);

while 1
    x1=x+alpha*dk;
    if ~(fun(x1,z)<=fx+delta*alpha*gd)
        b = alpha;
        alpha = (alpha+a)/2;
        nf = nf + 2;
        ng = ng + 1;

        continue;
    end
    if ~((gradfun(x1,z)')*dk >= rho*gd)
        a = alpha;
        alpha = min([2*alpha, (b+alpha)/2]);
        ng = ng + 2;
        
        continue;
    end
    break;
end
% newxk = xk+alpha*dk;
% newfk = fun(newxk);



