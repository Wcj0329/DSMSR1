clear,clc
S1=load('b.mat');BP1 = struct2cell(S1);Mymat11 = cell2mat(BP1);
%h=60;hh=100;
[hhh,~]=size(Mymat11);

for dd=1:4%测试wolfe第二个条件参数rho
    if  dd==1
        R1=zeros(hhh,1);
        R2=zeros(hhh,1);
        R3=zeros(hhh,1);
        R4=zeros(hhh,1);
        R5=zeros(hhh,1);
        R6=zeros(hhh,1);
        R7=zeros(hhh,1);
        R8=zeros(hhh,1);
        R9=zeros(hhh,1);
        R10=zeros(hhh,1);
        ii=3;%迭代次数
            k1=Mymat11(:,ii);
            k2=Mymat11(:,ii+4);
            k3=Mymat11(:,ii+8);
            k4=Mymat11(:,ii+12);
            k5=Mymat11(:,ii+16);
            k6=Mymat11(:,ii+20);
            k7=Mymat11(:,ii+24);
            k8=Mymat11(:,ii+28);
            k9=Mymat11(:,ii+32);
            k10=Mymat11(:,ii+36);
        for q=1:hhh %一千个例子才有用
            k11=k1(q);
            k22=k2(q);
            k33=k3(q);
            k44=k4(q);
            k55=k5(q);
            k66=k6(q);
            k77=k7(q);
            k88=k8(q);
            k99=k9(q);
            k1010=k10(q);
           a=min([k11,k22,k33,k44,k55,k66,k77,k88,k99,k1010]);
            k11=k11/a;
            k22=k22/a;
            k33=k33/a;
            k44=k44/a;
            k55=k55/a;
            k66=k66/a;
            k77=k77/a;
            k88=k88/a;
            k99=k99/a;
            k1010=k1010/a;

            R1(q)=k11;
            R2(q)=k22;
            R3(q)=k33;
            R4(q)=k44;
            R5(q)=k55;
            R6(q)=k66;  
            R7(q)=k77;
            R8(q)=k88;
            R9(q)=k99;
            R10(q)=k1010;
        end
        R1(find(isnan(R1)))=5000;
        R2(find(isnan(R2)))=5000;
        R3(find(isnan(R3)))=5000;
        R4(find(isnan(R4)))=5000;
        R5(find(isnan(R5)))=5000;
        R6(find(isnan(R6)))=5000;
        R7(find(isnan(R7)))=5000;
        R8(find(isnan(R8)))=5000;
        R9(find(isnan(R9)))=5000;
        R10(find(isnan(R10)))=5000;
       ksum=[R1 R2 R3 R4 R5 R6 R7 R8 R9 R10];
        iter=ksum;
        [m,n]=size(iter);
        ndd=m;%之前看懂就行
        for i=1:ndd
            mi=inf;
            for j=1:n
                if iter(i,j)~=0 && iter(i,j)<mi
                    mi=iter(i,j);
                end
            end
            for j=1:n
                iter(i,j)=iter(i,j)/mi;
            end
        end
        iterinum=[];
        for i=1:n
            a=unique(iter(:,i));
            na=length(a);
            iterinum=[iterinum,na];
        end
        tmax=max(iterinum);
        tx=ones(n,tmax);
        ty=ones(n,tmax);
        for i=1:n
            a=unique(iter(:,i));
            na=length(a);
            e=zeros(1,na-1);
            for k=2:na
                for j=1:ndd
                    if iter(j,i) <= a(k)
                        e(k-1)=e(k-1)+1;
                    end
                end
            end
            e=e./ndd;
            [me,ne]=size(e);
            tx(i,:)=max(a(2:na))*tx(i,:);
            ty(i,:)=max(e)*ty(i,:);
            tx(i,1:na-1)=a(2:na);
            ty(i,1:ne)=e;
        end
        % subplot(2,2,1) ;
        plot(tx(1,:),ty(1,:),'--','Color',[0,0.78,0.55],'linewidth',1.5)%lan[0,0.78,0.55]
        hold on
        plot(tx(2,:),ty(2,:),'--','Color',[0,0.4470,0.7410],'linewidth',1.5)%huang
        hold on
        plot(tx(3,:),ty(3,:),'--','Color',[0.93,0.69,0.13],'LineWidth',1.5)%huang
        hold on
        plot(tx(4,:),ty(4,:),'--','MarkerIndices',1,'Color',[0.49,0.18,0.56],'LineWidth',1.5) %LV
        hold on
        plot(tx(5,:),ty(5,:),'--','Color',[0.4660,0.6740,0.1880],'LineWidth',1.5) %JU SE[0.4660,0.6740,0.1880]
        hold on
        plot(tx(6,:),ty(6,:),'--*','MarkerIndices',1,'Color',[0.96,0.51,0.3],'linewidth',1.5)%ju
        hold on
        plot(tx(7,:),ty(7,:),'--','Color',[0.89,0.09,0.05],'linewidth',1.5)%红色虚线
        hold on
        plot(tx(8,:),ty(8,:),'--','MarkerIndices',1,'Color',[0,1,1],'LineWidth',1.5) %青色
        hold on
        plot(tx(9,:),ty(9,:),'-+','MarkerIndices',1,'Color',[1,0.6,0.07],'LineWidth',1.5) %镉黄色
        hold on
        plot(tx(10,:),ty(10,:),'--','Color',[0.49,0.99,0],'LineWidth',1.5) %草绿色
        hold on
       
        axis([1 3 0 1])
        xticks([1 2 3])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        % legend({'1e-1','1e-2','1e-3','1e-4'},'Interpreter','latex','location','southeast');
       legend({'9','8','7','6','5','4','3','2','1','0'},'Interpreter','latex','location','southeast');
       % title('(I) Iterations','fontname','Times New Roman','Color','k','FontSize',13)
       % title('(II) Function evaluations','fontname','Times New Roman','Color','k','FontSize',13)
       % title('(III) Gradient evaluations','fontname','Times New Roman','Color','k','FontSize',13)
       % title('(IV) CPU','fontname','Times New Roman','Color','k','FontSize',13)
    end
end
