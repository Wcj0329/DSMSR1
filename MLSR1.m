function [k,nf,ng,t] = MLSR1(x,z)
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
    gamma = (s'*s)/(s'*y) - sqrt(((s'*s)/(s'*y))^2 - (s'*s)/(y'*y));

    if (y'*(s-gamma*y)) ~= 0
        dk = -gamma*g1 + gamma*((s'*g1-gamma*y'*g1)/(y'*s-gamma*y'*y))*y - ((s'*g1-gamma*y'*g1)/(y'*s-gamma*y'*y))*s;
    else
        dk = -((y'*y)/(s'*y))*g1;
    end

    g = g1;
    f = f1;
    x = x1;
    k = k + 1;
    fprintf('k = %d, nf = %d, ng = %d \n',k,nf,ng);
end
t = toc;
