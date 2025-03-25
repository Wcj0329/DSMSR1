function [nk,xf,ff] = SMSR1(x,A,b,mu,lambda)
xf = []; 
ff = []; 
nk = 0;
maxk = 1000;
n1 = length(x);
I = eye(n1);
f = fun(x,A,b,mu);
g = gradfun(x,A,b,mu,lambda);
dk = (-I)*g;

while (nk<maxk)
    if norm(g) < (1+abs(f))*10^(-6) 
        break
    end

    [alpha] = Armijo(x,dk,A,b,mu,lambda);
    % if alpha == 0
    %     nk=nan;f=nan;
    %     break
    % end

    x1 = x + alpha * dk;
    f1 = fun(x1,A,b,mu);
    g1 = gradfun(x1,A,b,mu,lambda);

    s = x1 - x;
    y = g1 - g;
    theta = (s'*s)/(s'*y) - sqrt(((s'*s)/(s'*y))^2 - (s'*s)/(y'*y));
    dk = -theta*g1 + theta*((s'*g1-theta*y'*g1)/(y'*s-theta*y'*y))*y - ((s'*g1-theta*y'*g1)/(y'*s-theta*y'*y))*s;

    g = g1;
    f = f1;
    x = x1;
    nk = nk + 1;

    xf = [xf,x];
    ff = [ff,f];

    fprintf('nk = %d,f = %d \n',nk,f);
end
