function [g] = gradfunCS(x,A,b)
mu = 2^(-5); 
lambda = min(0.001,0.9*norm(A'*b,inf)); 
n2 = length(x);
dfai = zeros(n2,1);

for ii = 1:n2
    if abs(x(ii))< lambda
        dfai(ii) = x(ii) * lambda^(-1);
    else
        dfai(ii) = sign(x(ii));
    end
end

g = A' * (A*x-b) + mu*dfai;


