function [nk,xf,ff] = DSMSR12(x,A,b)
xf = []; 
ff = []; 
nk = 0;
maxk = 1000;
r = 1e-8;
N = 11; 
NN = zeros(N,1); 
n1 = length(x);
I = eye(n1);
f = fun(x,A,b);
g = gradfun(x,A,b);
fl = f;
NN = [f;NN(1:end-1)];
xf = [xf,x]; 
ff = [ff,f]; 
dk = (-I)*g;

while (nk<maxk)
    % if norm(g) < (1+abs(f))*10^(-6) 
    %     break
    % end

    [alpha] = NArmijo(x,A,b,dk,fl);

    x1 = x + alpha * dk;
    f1 = fun(x1,A,b);
    g1 = gradfun(x1,A,b);

    s = x1 - x;
    y = g1 - g;
    theta = (s'*s)/(s'*y) - sqrt(((s'*s)/(s'*y))^2 - (s'*s)/(y'*y));
    D = theta + ((s-theta*y).*(s-theta*y)) / ((s-theta*y)'*y);

    lambda = theta + (norm(s-theta*y)^2)/((s-theta*y)'*y);

    [~,im1] = max(D);
    lk = theta * ones(n1,1);
    lk(im1,1) = lambda;

    if ((s-(lk.*y))'*y) > (r*norm(s-(lk.*y))*norm(y))
        dk = -(lk.*g1) - (((s-(lk.*y))'*g1)/((s-(lk.*y))'*y))*(s-(lk.*y));
    else
        dk = -(s'*y)/(y'*(lk.*y))*(lk.*g1);
    end

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