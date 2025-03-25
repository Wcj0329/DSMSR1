function [alpha] = NArmijo(x,A,b,dk,Rk)
rho = 0.5;
delta = 1e-3;
alpha = 1;
gd = gradfun(x,A,b)'*dk;

while 1
    x1=x+alpha*dk;
    if ~(fun(x1,A,b)<=Rk+delta*alpha*gd)
        alpha = rho*alpha;
        continue;
    end
    break;
end
