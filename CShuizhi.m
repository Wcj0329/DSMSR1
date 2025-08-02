clear;clc
load('data3A.mat');
load('data3b.mat');
load('data3xs.mat');
load('data3SMSR1ff.mat');
load('data3SMSR1xf.mat');
load('data3DSMSR11ff.mat');
load('data3DSMSR11xf.mat');
load('data3DSMSR12ff.mat');
load('data3DSMSR12xf.mat');

[~,nxf1] = size(data3DSMSR11xf);
realerror1 = zeros(nxf1,1);
for ii = 1:nxf1
    realerror1(ii) = norm(data3DSMSR11xf(:,ii)-data3xs) / norm(data3xs);
end
[~,nxf2] = size(data3DSMSR12xf);
realerror2 = zeros(nxf2,1);
for ii = 1:nxf2
    realerror2(ii) = norm(data3DSMSR12xf(:,ii)-data3xs) / norm(data3xs);
end
[~,nxf3] = size(data3SMSR1xf);
realerror3 = zeros(nxf3,1);
for ii = 1:nxf3
    realerror3(ii) = norm(data3SMSR1xf(:,ii)-data3xs) / norm(data3xs);
end

x1 = 1:nxf1;
x2 = 1:nxf2;
x3 = 1:nxf3;

figure(1);
loglog(x1,data3DSMSR11ff,'r-','linewidth',1.2);
hold on
loglog(x2,data3DSMSR12ff,'b-','linewidth',1.2);
hold on
loglog(x3,data3SMSR1ff,'g--','linewidth',1.2);
hold off
axis([10^(0) 10^(3) 10^(0) 10^(3)])
xlabel('\bf{iterations}');
ylabel('\bf{function values}');
legend('DSMSR11','DSMSR12','SMSR1','Interpreter','latex');

figure(2);
loglog(x1,realerror1,'r-','linewidth',1.2);
hold on
loglog(x2,realerror2,'b-','linewidth',1.2);
hold on
loglog(x3,realerror3,'g--','linewidth',1.2);
hold off
axis([10^(0) 10^(3) 10^(-2) 10^(0)])
xlabel('\bf{iterations}');
ylabel('\bf{||x - x_{s}||/||x_{s}||}');
legend('DSMSR11','DSMSR12','SMSR1','Interpreter','latex');

figure(3);
plot(data3xs,'b-','Linewidth',1.2);
title('Original Signal (n=4096,k=123)','FontWeight', 'bold');
xlabel('\bf{Index [1 n]}');
ylabel('\bf{Amplitude}');
xticks([0 1000 2000 3000 4000 5000]);
% yticks([-5 0 5]);
axis([0 5000 -6 8])

figure(4);
plot(data3b,'b');
title('Observation (m=1229)','FontWeight', 'bold');
xlabel('\bf{Index [1 m]}');
ylabel('\bf{Amplitude}');
xticks([0 500 1000 1500]);
axis([0 1500 -2 2])

x_new1 = data3DSMSR11xf(:,end-1);
RelErr = norm(x_new1 - data3xs)/norm(data3xs);
figure(5);
plot(x_new1,'ro')
hold on 
plot(data3xs,'b-','Linewidth',1.2);
title(['DSMSR11 (RelErr=', num2str(RelErr), ')'], 'FontWeight', 'bold');
xlabel('\bf{Index [1 n]}');
ylabel('\bf{Amplitude}');
xticks([0 1000 2000 3000 4000 5000]);
% yticks([-5 0 5]);
axis([0 5000 -6 8])
hold off

x_new2 = data3DSMSR12xf(:,end-1);
RelErr = norm(x_new2 - data3xs)/norm(data3xs);
figure(6);
plot(x_new2,'ro')
hold on 
plot(data3xs,'b-','Linewidth',1.2);
title(['DSMSR12 (RelErr=', num2str(RelErr), ')'], 'FontWeight', 'bold');
xlabel('\bf{Index [1 n]}');
ylabel('\bf{Amplitude}');
xticks([0 1000 2000 3000 4000 5000]);
% yticks([-5 0 5]);
axis([0 5000 -6 8])
hold off

x_new3 = data3SMSR1xf(:,end-1);
RelErr = norm(x_new3 - data3xs)/norm(data3xs);
figure(7);
plot(x_new3,'ro')
hold on 
plot(data3xs,'b-','Linewidth',1.2);
title(['SMSR1 (RelErr=', num2str(RelErr), ')'], 'FontWeight', 'bold');
xlabel('\bf{Index [1 n]}');
ylabel('\bf{Amplitude}');
xticks([0 1000 2000 3000 4000 5000]);
% yticks([-5 0 5]);
axis([0 5000 -6 8])
hold off
