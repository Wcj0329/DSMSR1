clear;clc
n = 2^12; 
load('data1A.mat');
load('data1b.mat');
load('data1xs.mat');
x0 = zeros(n,1);

[nk,data1DSMBFGS1xf,data1DSMBFGS1ff] = DSMSR12CS(x0,data1A,data1b);
save data1DSMBFGS1xf.mat data1DSMBFGS1xf
save data1DSMBFGS1ff.mat data1DSMBFGS1ff



