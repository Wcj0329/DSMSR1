function [alpha,nf,ng] = wolfe2(x,dk,nf,ng,z)
alpha = 1;
delta=1e-3;
rho=0.99;
a = 0;
b = Inf;
gd = gradfun5(x,z)'*dk;
fx = fun5(x,z);
kk = 0;
kkk = 0;

while 1
    x1=x+alpha*dk;
    if ~(fun5(x1,z)<=fx+delta*alpha*gd)
        b = alpha;
        alpha = (alpha+a)/2;
        nf = nf + 2;
        ng = ng + 1;
        kk = kk + 1;

        if kk > 10000
            alpha = 0;
            break;
        end

        continue;
    end
    if ~((gradfun5(x1,z)')*dk >= rho*gd)
        a = alpha;
        alpha = min([2*alpha, (b+alpha)/2]);
        ng = ng + 2;
        kkk = kkk + 1;

        if kkk > 10000
            alpha = 0;
            break;
        end
        
        continue;
    end
    break;
end



