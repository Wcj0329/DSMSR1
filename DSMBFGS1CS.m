function [nk,xf,ff] = DSMBFGS1CS(x,A,b)
xf = [];
ff = []; 
maxnk = 1000;
nk = 0;
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

while (nk<maxnk)
    % if norm(g) < (1+abs(f))*10^(-6) 
    %     break
    % end

    [alpha] = NArmijoCS(x,A,b,dk,fl);

    x1 = x + alpha * dk;
    f1 = funCS(x1,A,b);
    g1 = gradfunCS(x1,A,b);

    s = x1 - x;
    y = g1 - g;
    v = (s'*y) / (norm(y)^2);

    D = v - 2*v*((s.*y)/(s'*y)) + (1+v*(norm(y)^2/(s'*y)))*((s.*s)/(s'*y));
    dk = ((-D).*g1) + s*(y'*(D.*g1))/(s'*y) + (D.*y)*(s'*g1)/(s'*y) - (1+y'*(D.*y)/(s'*y))*(s*(s'*g1))/(s'*y);

    g = g1;
    f = f1;
    x = x1;
    nk = nk + 1;

    NN = [f;NN(1:end-1)];
    fl = max(NN);

    xf = [xf,x]; 
    ff = [ff,f]; 

    fprintf('nk = %d,f = %d \n',nk,f);
end
