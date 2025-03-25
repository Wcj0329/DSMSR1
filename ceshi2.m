clear;clc;

p1 = 1:233;
p1 = p1';
pr1 = [10:12,13:17];
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
            fprintf('第 %d 个函数：\n',z)
            x = xvalue5(z);
            [k,nf,ng,t] = DSMSR11rs1xl(x,z);%
            dataset1(j,1)=k;dataset1(j,2)=nf;dataset1(j,3)=ng;dataset1(j,4)=t;
        end
    end
    dataset = [dataset,dataset1];
end
