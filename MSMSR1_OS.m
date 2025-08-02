function [k,nf,ng,t] = MSMSR1_OS(x,z)
tic;
k = 0;
maxk = 10000;
n = length(x);
I = eye(n);
f = fun(x,z);
g = gradfun(x,z);
nf = 1;
ng = 1;
dk = (-I)*g;

while (k<maxk)
    if norm(g) < (1+abs(f))*10^(-6) 
        break
    end

    [alpha,nf,ng] = wolfe2(x,dk,nf,ng,z);

    x1 = x + alpha * dk;
    f1 = fun(x1,z);
    g1 = gradfun(x1,z);
    nf = nf + 1;
    ng = ng + 1;

    s = x1 - x;
    y = g1 - g;
    theta = (s'*y) / (norm(y)^2);

    dk = -theta*g1 - ((s-theta*y)'*g1/(s'*y))*(s-theta*y);

    g = g1;
    f = f1;
    x = x1;
    k = k + 1;
end
t = toc;