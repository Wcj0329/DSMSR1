function [nk,xf,ff] = DSMSR11CS(x,A,b)
xf = []; 
ff = []; 
nk = 0;
gamma1 = 1e-10;
gamma2 = gamma1^(-1);
maxk = 1000;
r = 1e-8;
N = 11; 
NN = zeros(N,1); 
n1 = length(x);
I = eye(n1);
f = funCS(x,A,b);
g = gradfunCS(x,A,b);
fl = f;
NN = [f;NN(1:end-1)];
xf = [xf,x]; 
ff = [ff,f]; 
dk = (-I)*g;

while (nk<maxk)
    % if norm(g) < (1+abs(f))*10^(-6) 
    %     break
    % end

    [alpha] = NArmijoCS(x,A,b,dk,fl);

    x1 = x + alpha * dk;
    f1 = funCS(x1,A,b);
    g1 = gradfunCS(x1,A,b);

    s = x1 - x;
    y = g1 - g;
    theta = (s'*s)/(s'*y) - sqrt(((s'*s)/(s'*y))^2 - (s'*s)/(y'*y));

    if ((s-theta*y)'*y) ~= 0
        D = theta + ((s-theta*y).*(s-theta*y)) / ((s-theta*y)'*y);
        for ii = 1:n1
            D(ii) = min(max(D(ii),gamma1),gamma2);
        end
    else
        D = ones(n1,1);
    end

    if ((s-(D.*y))'*y) > (r*norm(s-(D.*y))*norm(y))
        dk = -(D.*g1) - (((s-(D.*y))'*g1)/((s-(D.*y))'*y))*(s-(D.*y));
    else
        dk = -(s'*y)/(y'*(D.*y))*(D.*g1);
    end

    g = g1;
    f = f1;
    x = x1;
    nk = nk + 1;

    NN = [f;NN(1:end-1)];
    fl = max(NN);

    xf = [xf,x];
    ff = [ff,f];
end