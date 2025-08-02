clear;clc
n = 2^12;
load('data3A.mat');
load('data3b.mat');
load('data3xs.mat');
x0 = zeros(n,1);

[nk,data3DSMSR11xf,data3DSMSR11ff] = DSMSR11CS(x0,data3A,data3b); 
save data3DSMSR11xf.mat data3DSMSR11xf
save data3DSMSR11ff.mat data3DSMSR11ff