function [xs,x,b] = CSb(n,m,k,A)
sigma1 = 10^(-7); 
sigma2 = 10^(-7); 
xs = zeros(n,1);
p = randperm(n);
xs(p(1:k)) = 2*randn(k,1);
x = xs + sigma1*randn(n,1);
sI = randn(m,1);
b = A*x + sigma2*sI;
end