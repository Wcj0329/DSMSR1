function [k,nf,ng,t] = DSMDFP2xl(x,z)
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

    D = v + (s.*s)/(s'*y) - v*(y.*y)/(y'*y);

    rho1 = (1/2)*(v+(norm(s)^2)/(s'*y)) + (1/2)*sqrt((v+(norm(s)^2)/(s'*y))^2 - 4*v*(s'*y)/(norm(y)^2));
    rho0 = (1/2)*(v+(norm(s)^2)/(s'*y)) - (1/2)*sqrt((v+(norm(s)^2)/(s'*y))^2 - 4*v*(s'*y)/(norm(y)^2));

    lk = v * ones(n,1);
    [~,im1] = max(D);% 找到最大值及其位置索引
    lk(im1,1) = rho1;
    [~,in1] = min(D);% 找到最小值及其位置索引
    lk(in1,1) = rho0;

    dk = ((-lk).*g1) - s*(s'*g1)/(s'*y) + (lk.*y)*(y'*(lk.*g1))/(y'*(lk.*y));

    g = g1;
    f = f1;
    x = x1;
    k = k + 1;
    fprintf('k = %d, nf = %d, ng = %d \n',k,nf,ng);
end
t = toc;