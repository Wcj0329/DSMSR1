function [k,nf,ng,t] = DSMBFGS1xl(x,z)
tic;
k = 0;
maxk = 10000;
n = length(x);
I = eye(n);
f = fun5(x,z);
g = gradfun5(x,z);
nf = 1;
ng = 1;
dk = (-I)*g;

while (k<maxk)
    if norm(g) < (1+abs(f))*10^(-6) 
        break
    end

    [alpha,nf,ng] = wolfe2(x,dk,nf,ng,z);
    if alpha == 0
        k=nan;nf=nan;ng=nan;
        break
    end

    x1 = x + alpha * dk;
    f1 = fun5(x1,z);
    g1 = gradfun5(x1,z);
    nf = nf + 1;
    ng = ng + 1;

    s = x1 - x;
    y = g1 - g;
    v = (s'*y) / (norm(y)^2);

    D = v - 2*v*((s.*y)/(s'*y)) + (1+v*(norm(y)^2/(s'*y)))*((s.*s)/(s'*y));
    dk = ((-D).*g1) + s*(y'*(D.*g1))/(s'*y) + (D.*y)*(s'*g1)/(s'*y) - (1+y'*(D.*y)/(s'*y))*(s*(s'*g1))/(s'*y);
    

    g = g1;
    f = f1;
    x = x1;
    k = k + 1;
    fprintf('k = %d, nf = %d, ng = %d \n',k,nf,ng);
end
t = toc;