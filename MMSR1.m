function [k,nf,ng,t] = MMSR1(x,z) 
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
    fai = 2*(f-f1) + (g1+g)'*s;
    y1 = y + (fai/(norm(s)^2))*s;
    lambda = (s'*s)/(s'*y1) - sqrt(((s'*s)^2)/(s'*y1)^2 - (s'*s)/(y1'*y1));
    dk = -lambda*g1 + lambda*((s'*g1-lambda*y1'*g1)/(y1'*s-lambda*y1'*y1))*y1 - ((s'*g1-lambda*y1'*g1)/(y1'*s-lambda*y1'*y1))*s;

    g = g1;
    f = f1;
    x = x1;
    k = k + 1;
end
t = toc;