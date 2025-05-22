function [alpha] = NArmijoCS(x,A,b,dk,Rk)
rho = 0.5;
delta = 1e-3;
alpha = 1;
gd = gradfunCS(x,A,b)'*dk;

while 1
    x1=x+alpha*dk;
    if ~(funCS(x1,A,b)<=Rk+delta*alpha*gd)
        alpha = rho*alpha;
        continue;
    end
    break;
end
