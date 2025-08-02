function [k,nf,ng,t] = DSMSR12(x,z)
tic;
k = 0;
gamma3 = 1e10;
maxk = 10000;
r = 1e-8;
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
    theta = (s'*s)/(s'*y) - sqrt(((s'*s)/(s'*y))^2 - (s'*s)/(y'*y));

    D = theta + ((s-theta*y).^2)/((s-theta*y)'*y);

    lambda = theta + (norm(s-theta*y)^2)/((s-theta*y)'*y);

    [~,im1] = max(D);
    lk = theta * ones(n,1);
    lk(im1,1) = lambda;

    for jj = 1:n
        lk(jj) = min(lk(jj),gamma3);
    end

    if ((s-(lk.*y))'*y) > (r*norm(s-(lk.*y))*norm(y))
        dk = -(lk.*g1) - (((s-(lk.*y))'*g1)/((s-(lk.*y))'*y))*(s-(lk.*y));
    else
        dk = -(s'*y)/(y'*(lk.*y))*(lk.*g1);
    end

    g = g1;
    f = f1;
    x = x1;
    k = k + 1;
end
t = toc;