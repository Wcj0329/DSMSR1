function [f] = funCS(x,A,b)
mu = 2^(-5); 
f = 1/2 * norm(A*x-b)^2 + mu*norm(x,1);
end
