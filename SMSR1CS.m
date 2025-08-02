function [nk,xf,ff] = SMSR1CS(x,A,b)
xf = []; 
ff = []; 
nk = 0;
maxk = 1000;
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
    dk = -theta*g1 + theta*((s'*g1-theta*y'*g1)/(y'*s-theta*y'*y))*y - ((s'*g1-theta*y'*g1)/(y'*s-theta*y'*y))*s;

    g = g1;
    f = f1;
    x = x1;
    nk = nk + 1;

    NN = [f;NN(1:end-1)];
    fl = max(NN);

    xf = [xf,x];
    ff = [ff,f];
end
