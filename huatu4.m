clear,clc
S1=load('zongDSMSR11rs1_4xl.mat');BP1 = struct2cell(S1);Mymat11 = cell2mat(BP1);
%h=60;hh=100;
[hhh,~]=size(Mymat11);
for dd=1:4
    if  dd==1
        R1=zeros(hhh,1);
        R2=zeros(hhh,1);
        R3=zeros(hhh,1);
        R4=zeros(hhh,1);

        ii=1;
        k1=Mymat11(:,ii);
        k2=Mymat11(:,ii+4);
        k3=Mymat11(:,ii+8);
        k4=Mymat11(:,ii+12);

        for q=1:hhh
            k11=k1(q);
            k22=k2(q);
            k33=k3(q);
            k44=k4(q);

            a=min([k11,k22,k33,k44]);
            k11=k11/a;
            k22=k22/a;
            k33=k33/a;
            k44=k44/a;

            R1(q)=k11;
            R2(q)=k22;
            R3(q)=k33;
            R4(q)=k44;

        end
        R1(find(isnan(R1)))=5000;
        R2(find(isnan(R2)))=5000;
        R3(find(isnan(R3)))=5000;
        R4(find(isnan(R4)))=5000;

        ksum=[R1 R2 R3 R4];
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
        subplot(2,2,1) ;
        plot(tx(1,:),ty(1,:),'--','Color',[0.89,0.09,0.05],'linewidth',1.5)%红色虚线
        hold on
        plot(tx(2,:),ty(2,:),'-.','Color',[1,0,1],'linewidth',1.5)%深红色点画线
        hold on
        plot(tx(3,:),ty(3,:),'-','Color',[0.49,0.99,0],'LineWidth',1.5) %草绿色
        hold on
        plot(tx(4,:),ty(4,:),'--+','MarkerIndices',1,'Color',[0.63,0.13,0.94],'linewidth',1.5)%紫色
        hold on

        axis([1 5 0 1])
        xticks([1 2 3 4 5])
        yticks([0 0.2 0.4 0.6 0.8 1])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        legend({'DSMSR11rs1xl','DSMSR11rs2xl','DSMSR11rs3xl','DSMSR11rs4xl'},'Interpreter','latex','location','southeast');
        title('(I) Iterations','fontname','Times New Roman','Color','k','FontSize',13)
    end
end

for dd=1:4
    if  dd==1
        R1=zeros(hhh,1);
        R2=zeros(hhh,1);
        R3=zeros(hhh,1);
        R4=zeros(hhh,1);

        ii=2;
        k1=Mymat11(:,ii);
        k2=Mymat11(:,ii+4);
        k3=Mymat11(:,ii+8);
        k4=Mymat11(:,ii+12);

        for q=1:hhh
            k11=k1(q);
            k22=k2(q);
            k33=k3(q);
            k44=k4(q);

            a=min([k11,k22,k33,k44]);
            k11=k11/a;
            k22=k22/a;
            k33=k33/a;
            k44=k44/a;

            R1(q)=k11;
            R2(q)=k22;
            R3(q)=k33;
            R4(q)=k44;

        end
        R1(find(isnan(R1)))=5000;
        R2(find(isnan(R2)))=5000;
        R3(find(isnan(R3)))=5000;
        R4(find(isnan(R4)))=5000;

        ksum=[R1 R2 R3 R4];
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
        subplot(2,2,2) ;
        plot(tx(1,:),ty(1,:),'--','Color',[0.89,0.09,0.05],'linewidth',1.5)%红色虚线
        hold on
        plot(tx(2,:),ty(2,:),'-.','Color',[1,0,1],'linewidth',1.5)%深红色点画线
        hold on
        plot(tx(3,:),ty(3,:),'-','Color',[0.49,0.99,0],'LineWidth',1.5) %草绿色
        hold on
        plot(tx(4,:),ty(4,:),'--+','MarkerIndices',1,'Color',[0.63,0.13,0.94],'linewidth',1.5)%紫色
        hold on


        axis([1 5 0 1])
        xticks([1 2 3 4 5])
        yticks([0 0.2 0.4 0.6 0.8 1])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        legend({'DSMSR11rs1xl','DSMSR11rs2xl','DSMSR11rs3xl','DSMSR11rs4xl'},'Interpreter','latex','location','southeast');
        title('(II) Function evaluations','fontname','Times New Roman','Color','k','FontSize',13)
    end
end

for dd=1:4
    if  dd==1
        R1=zeros(hhh,1);
        R2=zeros(hhh,1);
        R3=zeros(hhh,1);
        R4=zeros(hhh,1);

        ii=3;
        k1=Mymat11(:,ii);
        k2=Mymat11(:,ii+4);
        k3=Mymat11(:,ii+8);
        k4=Mymat11(:,ii+12);

        for q=1:hhh
            k11=k1(q);
            k22=k2(q);
            k33=k3(q);
            k44=k4(q);
 
            a=min([k11,k22,k33,k44]);
            k11=k11/a;
            k22=k22/a;
            k33=k33/a;
            k44=k44/a;

            R1(q)=k11;
            R2(q)=k22;
            R3(q)=k33;
            R4(q)=k44;
  
        end
        R1(find(isnan(R1)))=5000;
        R2(find(isnan(R2)))=5000;
        R3(find(isnan(R3)))=5000;
        R4(find(isnan(R4)))=5000;

        ksum=[R1 R2 R3 R4];
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
        subplot(2,2,3) ;
        plot(tx(1,:),ty(1,:),'--','Color',[0.89,0.09,0.05],'linewidth',1.5)%红色虚线
        hold on
        plot(tx(2,:),ty(2,:),'-.','Color',[1,0,1],'linewidth',1.5)%深红色点画线
        hold on
        plot(tx(3,:),ty(3,:),'-','Color',[0.49,0.99,0],'LineWidth',1.5) %草绿色
        hold on
        plot(tx(4,:),ty(4,:),'--+','MarkerIndices',1,'Color',[0.63,0.13,0.94],'linewidth',1.5)%紫色
        hold on


        axis([1 5 0 1])
        xticks([1 2 3 4 5])
        yticks([0 0.2 0.4 0.6 0.8 1])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        legend({'DSMSR11rs1xl','DSMSR11rs2xl','DSMSR11rs3xl','DSMSR11rs4xl'},'Interpreter','latex','location','southeast');
        title('(III) Gradient evaluations','fontname','Times New Roman','Color','k','FontSize',13)
    end
end

for dd=1:4
    if  dd==1
        R1=zeros(hhh,1);
        R2=zeros(hhh,1);
        R3=zeros(hhh,1);
        R4=zeros(hhh,1);

        ii=4;
        k1=Mymat11(:,ii);
        k2=Mymat11(:,ii+4);
        k3=Mymat11(:,ii+8);
        k4=Mymat11(:,ii+12);

        for q=1:hhh
            k11=k1(q);
            k22=k2(q);
            k33=k3(q);
            k44=k4(q);

            a=min([k11,k22,k33,k44]);
            k11=k11/a;
            k22=k22/a;
            k33=k33/a;
            k44=k44/a;

            R1(q)=k11;
            R2(q)=k22;
            R3(q)=k33;
            R4(q)=k44;

        end
        R1(find(isnan(R1)))=5000;
        R2(find(isnan(R2)))=5000;
        R3(find(isnan(R3)))=5000;
        R4(find(isnan(R4)))=5000;

        ksum=[R1 R2 R3 R4];
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
        subplot(2,2,4) ;
        plot(tx(1,:),ty(1,:),'--','Color',[0.89,0.09,0.05],'linewidth',1.5)%红色虚线
        hold on
        plot(tx(2,:),ty(2,:),'-.','Color',[1,0,1],'linewidth',1.5)%深红色点画线
        hold on
        plot(tx(3,:),ty(3,:),'-','Color',[0.49,0.99,0],'LineWidth',1.5) %草绿色
        hold on
        plot(tx(4,:),ty(4,:),'--+','MarkerIndices',1,'Color',[0.63,0.13,0.94],'linewidth',1.5)%紫色
        hold on

        axis([1 5 0 1])
        xticks([1 2 3 4 5])
        yticks([0 0.2 0.4 0.6 0.8 1])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        legend({'DSMSR11rs1xl','DSMSR11rs2xl','DSMSR11rs3xl','DSMSR11rs4xl'},'Interpreter','latex','location','southeast');
        title('(IV) CPU Time','fontname','Times New Roman','Color','k','FontSize',13)
    end
    % sgtitle('\delta=1e-3,\rho=0.99','color','black','Fontsize',12)%为图像添加总标题
end