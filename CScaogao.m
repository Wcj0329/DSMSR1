clear;clc

n = 2^13;
m = 2458;
k = 246;
sigma1 = 10^(-7);
sigma2 = 10^(-7);
A = randn(m,n)/sqrt(m);

% A = randn(m,n);
% for i = 1:n
%     A(:, i) = A(:, i) / norm(A(:, i));
% end

% A = randn(m,n);
% for i = 1:m
%     A(i, :) = A(i, :) / norm(A(i, :));
% end

[x,b] = CSIn(n,m,k,sigma1,sigma2,A);


figure;
subplot(2,1,1);
plot(x);
title('Oringe Signal(n=8192,k=82)');
% axis([0 9000 -6 6])
% yticks([-6 -4 -2 0 2 4 6]);
xlabel('Index [1 n]');
ylabel('Amplitude');
hold on;


subplot(2,1,2);
plot(b);
title('Observation(m=819)');
% axis([0 900 -0.8 0.8])
% yticks([-0.8 -0.6 -0.4 -0.2 0 0.2 0.4 0.6 0.8]);
xlabel('Index [1 m]');
ylabel('Amplitude');
hold off;

