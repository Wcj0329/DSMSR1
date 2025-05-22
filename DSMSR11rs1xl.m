function [k,nf,ng,t] = DSMSR11rs1xl(x,z)
tic;
k = 0;
epsilon = 1e-10;
epsilon1 = epsilon^(-1);
maxk = 10000;
r = 1e-8;
% epsilon2 = 1e-15;
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
    theta = (s'*s)/(s'*y) - sqrt(((s'*s)/(s'*y))^2 - (s'*s)/(y'*y));

    if ((s-theta*y)'*y) ~= 0
        D = theta + ((s-theta*y).*(s-theta*y)) / ((s-theta*y)'*y);
        for ii = 1:n
            D(ii) = min(max(D(ii),epsilon),epsilon1);
        end
    else
        % Dk = I;
        D = ones(n,1);
    end

    if ((s-(D.*y))'*y) > (r*norm(s-(D.*y))*norm(y))
        dk = -(D.*g1) - (((s-(D.*y))'*g1)/((s-(D.*y))'*y))*(s-(D.*y));
    else
        dk = -(s'*y)/(y'*(D.*y))*(D.*g1);
    end

    g = g1;
    f = f1;
    x = x1;
    k = k + 1;
    fprintf('k = %d, nf = %d, ng = %d \n',k,nf,ng);
end
t = toc;