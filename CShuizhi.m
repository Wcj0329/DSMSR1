clear;clc
load('data1A.mat');
load('data1b.mat');
load('data1xs.mat');
load('data1DSMBFGS1ff.mat');
load('data1DSMBFGS1xf.mat');
load('data1DSMSR11ff.mat');
load('data1DSMSR11xf.mat');
load('data1DSMSR12ff.mat');
load('data1DSMSR12xf.mat');

[~,nxf1] = size(data1DSMSR11xf);
realerror1 = zeros(nxf1,1);
for ii = 1:nxf1
    realerror1(ii) = norm(data1DSMSR11xf(:,ii)-data1xs) / norm(data1xs);
end
[~,nxf2] = size(data1DSMSR12xf);
realerror2 = zeros(nxf2,1);
for ii = 1:nxf2
    realerror2(ii) = norm(data1DSMSR12xf(:,ii)-data1xs) / norm(data1xs);
end
[~,nxf3] = size(data1DSMBFGS1xf);
realerror3 = zeros(nxf3,1);
for ii = 1:nxf3
    realerror3(ii) = norm(data1DSMBFGS1xf(:,ii)-data1xs) / norm(data1xs);
end

x1 = 1:nxf1;
x2 = 1:nxf2;
x3 = 1:nxf3;

figure(1);
loglog(x1,data1DSMSR11ff,'r-','linewidth',1.2);
hold on
loglog(x2,data1DSMSR12ff,'b-','linewidth',1.2);
hold on
loglog(x3,data1DSMBFGS1ff,'g--','linewidth',1.2);
hold off
axis([10^(0) 10^(3) 10^(0) 10^(3)])
xlabel('\bf{iterations}');
ylabel('\bf{function values}');
legend('DSMSR11','DSMSR12','DSMBFGS1','Interpreter','latex');

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
legend('DSMSR11','DSMSR12','DSMBFGS1','Interpreter','latex');

figure(3);
plot(data1xs,'b-','Linewidth',1.2);
title('Original Signal (n=4096,k=123)','FontWeight', 'bold');
xlabel('\bf{Index [1 n]}');
ylabel('\bf{Amplitude}');
xticks([0 1000 2000 3000 4000 5000]);
% yticks([-5 0 5]);
axis([0 5000 -6 8])

figure(4);
plot(data1b,'b');
title('Observation (m=1229)','FontWeight', 'bold');
xlabel('\bf{Index [1 m]}');
ylabel('\bf{Amplitude}');
xticks([0 500 1000 1500]);
axis([0 1500 -2 2])

x_new1 = data1DSMSR11xf(:,end-1);
RelErr = norm(x_new1 - data1xs)/norm(data1xs);
figure(5);
plot(x_new1,'ro')
hold on 
plot(data1xs,'b-','Linewidth',1.2);
title(['DSMSR11 (RelErr=', num2str(RelErr), ')'], 'FontWeight', 'bold');
xlabel('\bf{Index [1 n]}');
ylabel('\bf{Amplitude}');
xticks([0 1000 2000 3000 4000 5000]);
% yticks([-5 0 5]);
axis([0 5000 -6 8])
hold off

x_new2 = data1DSMSR12xf(:,end-1);
RelErr = norm(x_new2 - data1xs)/norm(data1xs);
figure(6);
plot(x_new2,'ro')
hold on 
plot(data1xs,'b-','Linewidth',1.2);
title(['DSMSR12 (RelErr=', num2str(RelErr), ')'], 'FontWeight', 'bold');
xlabel('\bf{Index [1 n]}');
ylabel('\bf{Amplitude}');
xticks([0 1000 2000 3000 4000 5000]);
% yticks([-5 0 5]);
axis([0 5000 -6 8])
hold off

x_new3 = data1DSMBFGS1xf(:,end-1);
RelErr = norm(x_new3 - data1xs)/norm(data1xs);
figure(7);
plot(x_new3,'ro')
hold on 
plot(data1xs,'b-','Linewidth',1.2);
title(['DSMBFGS1 (RelErr=', num2str(RelErr), ')'], 'FontWeight', 'bold');
xlabel('\bf{Index [1 n]}');
ylabel('\bf{Amplitude}');
xticks([0 1000 2000 3000 4000 5000]);
% yticks([-5 0 5]);
axis([0 5000 -6 8])
hold off
