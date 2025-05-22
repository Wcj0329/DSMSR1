clear;clc 
n = 2^12; 
m = 1229; 
k = 123; 

data1A = randn(m,n)/sqrt(m);

% data2A = randn(m,n);
% for i = 1:n
%     data2A(:, i) = data2A(:, i) / norm(data2A(:, i));
% end

% data3A = randn(n, n);    
% [Q, ~] = qr(data3A); 
% data3A = Q(1:m, :);

% data4A = randi([0 1], m, n); 
% data4A(data4A == 0) = -1;
% data4A = data4A/sqrt(m);
% 
% data5A = PHM(m,n); 
% data5A = data5A/sqrt(m);


save data1A.mat data1A

[data1xs,xz,data1b] = CSb(n,m,k,data1A);
save data1xs.mat data1xs
save data1b.mat data1b

figure(1);
plot(data1xs,'b-','Linewidth',1.2);
title('Orginal Signal (n=8192,k=82)');
xlabel('Index [1 n]');
ylabel('Amplitude');

figure(2);
plot(data1b,'b');
title('Observation (m=819)');
xlabel('Index [1 m]');
ylabel('Amplitude');