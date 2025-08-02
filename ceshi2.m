clear;clc;

p1 = 1:248;
p1 = p1';
pr1 = [11:13,73:77,83:87,96:97,103:107,115,125:129,155:159,170:174,200:204,224:228,239:248];
p1= setdiff(p1, pr1);
p1 = sort(p1);
pm = length(p1);
num1 = 4;
dataset = [];

for i = 1:1
    if i == 1
        dataset1 = zeros(pm,num1);
        for j = 1:pm 
            z = p1(j);
            x = xvalue(z);
            [k,nf,ng,t] =  DSMSR11(x,z);
            dataset1(j,1)=k;dataset1(j,2)=nf;dataset1(j,3)=ng;dataset1(j,4)=t;
        end
    end
    dataset = [dataset,dataset1];
end
