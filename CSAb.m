clear;clc 
n = 2^12;
m = 1229; 
k = 123; 


% data1A = randn(m,n);
% data1A = data1A/sqrt(m);

% data2A = randn(m,n);
% for i = 1:n
%     data2A(:, i) = data2A(:, i) / norm(data2A(:, i));
% end
   
data3A = randn(m, n);
[Q, ~] = qr(data3A'); 
data3A = Q(:, 1:m)'; 


% data4A = randi([0 1], m, n); 
% data4A(data4A == 0) = -1;
% data4A = data4A/sqrt(m);

% data5A = hadamard(n); 
% rand_rows = randperm(n, m); 
% data5A = data5A(rand_rows, :);  
% data5A = data5A/sqrt(m);


save data3A.mat data3A

[data3xs,data3b] = CSb(n,m,k,data3A);
save data3xs.mat data3xs
save data3b.mat data3b

figure(1);
plot(data3xs,'b-','Linewidth',1.2);
title('Orginal Signal (n=4096,k=123)');
xlabel('Index [1 n]');
ylabel('Amplitude');

figure(2);
plot(data3b,'b');
title('Observation (m=1229)');
xlabel('Index [1 m]');
ylabel('Amplitude');