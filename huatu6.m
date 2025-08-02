clear,clc
S1=load('a2.mat');BP1 = struct2cell(S1);Mymat11 = cell2mat(BP1);
[hhh,~]=size(Mymat11);
for dd=1:4
    if  dd==1
        R1=zeros(hhh,1);
        R2=zeros(hhh,1);
        R3=zeros(hhh,1);
        R4=zeros(hhh,1);
        R5=zeros(hhh,1);
        R6=zeros(hhh,1);
        ii=3;
        k1=Mymat11(:,ii);
        k2=Mymat11(:,ii+4);
        k3=Mymat11(:,ii+8);
        k4=Mymat11(:,ii+12);
        k5=Mymat11(:,ii+16);
        k6=Mymat11(:,ii+20);
        for q=1:hhh
            k11=k1(q);
            k22=k2(q);
            k33=k3(q);
            k44=k4(q);
            k55=k5(q);
            k66=k6(q);
            a=min([k11,k22,k33,k44,k55,k66]);
            k11=k11/a;
            k22=k22/a;
            k33=k33/a;
            k44=k44/a;
            k55=k55/a;
            k66=k66/a;

            R1(q)=k11;
            R2(q)=k22;
            R3(q)=k33;
            R4(q)=k44;
            R5(q)=k55;
            R6(q)=k66;

        end
        R1(find(isnan(R1)))=10000;
        R2(find(isnan(R2)))=10000;
        R3(find(isnan(R3)))=10000;
        R4(find(isnan(R4)))=10000;
        R5(find(isnan(R5)))=10000;
        R6(find(isnan(R6)))=10000;

        ksum=[R1 R2 R3 R4 R5 R6];
        iter=ksum;
        [m,n]=size(iter);
        ndd=m;
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
        plot(tx(1,:),ty(1,:),'--','Color',[0,0.78,0.55],'linewidth',1.5)
        hold on
        plot(tx(2,:),ty(2,:),'--','Color',[0,0,1],'linewidth',1.5)
        hold on
        plot(tx(3,:),ty(3,:),'--','Color',[0.93,0.69,0.13],'LineWidth',1.5)
        hold on
        plot(tx(4,:),ty(4,:),'--','MarkerIndices',1,'Color',[0.49,0.18,0.56],'LineWidth',1.5) 
        hold on
        plot(tx(5,:),ty(5,:),'--','Color',[0.4660,0.6740,0.1880],'LineWidth',1.5)
        hold on
        plot(tx(6,:),ty(6,:),'--','MarkerIndices',1,'Color',[0.96,0.51,0.3],'linewidth',1.5)
        hold on

        axis([1 4 0.1 1])
        xticks([1 1.5 2 2.5 3 3.5 4])
        yticks([0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        legend({'DSMSR11','DSMSR12','MLSR1','3TCG-SR1','MMSR1','MSMSR1-OS'},'Interpreter','latex','location','southeast');
    end
end