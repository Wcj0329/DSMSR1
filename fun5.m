function f=fun5(x,s) 
if(s==1)               %1  Extended Freudenstein & Roth function
n=length(x);           %x0=[0.5;-2;0.5;-2...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((-13+a+5*b.^2-b.^3-2*b).^2+(-29+a+b.^3+b.^2-14*b).^2);

elseif(s==2)           %1  Extended Freudenstein & Roth function
n=length(x);           %x0=[0.5;-2;0.5;-2...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((-13+a+5*b.^2-b.^3-2*b).^2+(-29+a+b.^3+b.^2-14*b).^2);

elseif(s==3)           %1  Extended Freudenstein & Roth function
n=length(x);           %x0=[0.5;-2;0.5;-2...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((-13+a+5*b.^2-b.^3-2*b).^2+(-29+a+b.^3+b.^2-14*b).^2);

elseif(s==4)           %1  Extended Freudenstein & Roth function
n=length(x);           %x0=[0.5;-2;0.5;-2...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((-13+a+5*b.^2-b.^3-2*b).^2+(-29+a+b.^3+b.^2-14*b).^2);

elseif(s==5)      % 2 Extended Trigonometric function 
     
    n=length(x);         %x0=[0.2,0.2,0.2,0.2...]
    f=0;
    f1=0;
    for j=1:n
        a=cos(x(j));
        f1=f1+a;
    end
    for i=1:n
        b=((n-a)+i*(1-cos(x(i)))-sin(x(i)))^2;
        f=f+b;
    end

elseif(s==6)      % 2 Extended Trigonometric function 
     
    n=length(x);         %x0=[0.2,0.2,0.2,0.2...]
    f=0;
    f1=0;
    for j=1:n
        a=cos(x(j));
        f1=f1+a;
    end
    for i=1:n
        b=((n-a)+i*(1-cos(x(i)))-sin(x(i)))^2;
        f=f+b;
    end

elseif(s==7)      % 2 Extended Trigonometric function 
     
    n=length(x);         %x0=[0.2,0.2,0.2,0.2...]
    f=0;
    f1=0;
    for j=1:n
        a=cos(x(j));
        f1=f1+a;
    end
    for i=1:n
        b=((n-a)+i*(1-cos(x(i)))-sin(x(i)))^2;
        f=f+b;
    end

elseif(s==8)      % 2 Extended Trigonometric function 
     
    n=length(x);         %x0=[0.2,0.2,0.2,0.2...]
    f=0;
    f1=0;
    for j=1:n
        a=cos(x(j));
        f1=f1+a;
    end
    for i=1:n
        b=((n-a)+i*(1-cos(x(i)))-sin(x(i)))^2;
        f=f+b;
    end

elseif(s==9)      % 2 Extended Trigonometric function 
     
    n=length(x);         %x0=[0.2,0.2,0.2,0.2...]
    f=0;
    f1=0;
    for j=1:n
        a=cos(x(j));
        f1=f1+a;
    end
    for i=1:n
        b=((n-a)+i*(1-cos(x(i)))-sin(x(i)))^2;
        f=f+b;
    end

elseif(s==10) % 4 Generalized Rosenbrock function) 
n = length(x);   %x0=[-1.2;1;-1.2;1...]
a = x(1:n-1);
b = x(2:n);
c = 100;
f=sum(c.*(b - a.^2).^2 + (1 - a).^2);

elseif(s==11) % 4 Generalized Rosenbrock function) 
n = length(x);   %x0=[-1.2;1;-1.2;1...]
a = x(1:n-1);
b = x(2:n);
c = 100;
f=sum(c.*(b - a.^2).^2 + (1 - a).^2);

elseif(s==12) % 4 Generalized Rosenbrock function) 
n = length(x);   %x0=[-1.2;1;-1.2;1...]
a = x(1:n-1);
b = x(2:n);
c = 100;
f=sum(c.*(b - a.^2).^2 + (1 - a).^2);

elseif(s==13)  % 7 Extended Penalty function 
n=length(x);      %x0=[1;2;3;4;5...n]
f1=0;
f2=0;
for j=1:n
    a=x(j)^2;
    f1=f1+a;
end
for i=1:n-1
    b=(x(i)-1)^2;
    f2=f2+b;
end
f3=(f1-0.25)^2;
f=f2+f3;

elseif(s==14)  % 7 Extended Penalty function 
n=length(x);      %x0=[1;2;3;4;5...n]
f1=0;
f2=0;
for j=1:n
    a=x(j)^2;
    f1=f1+a;
end
for i=1:n-1
    b=(x(i)-1)^2;
    f2=f2+b;
end
f3=(f1-0.25)^2;
f=f2+f3;

elseif(s==15)  % 7 Extended Penalty function 
n=length(x);      %x0=[1;2;3;4;5...n]
f1=0;
f2=0;
for j=1:n
    a=x(j)^2;
    f1=f1+a;
end
for i=1:n-1
    b=(x(i)-1)^2;
    f2=f2+b;
end
f3=(f1-0.25)^2;
f=f2+f3;

elseif(s==16)  % 7 Extended Penalty function 
n=length(x);      %x0=[1;2;3;4;5...n]
f1=0;
f2=0;
for j=1:n
    a=x(j)^2;
    f1=f1+a;
end
for i=1:n-1
    b=(x(i)-1)^2;
    f2=f2+b;
end
f3=(f1-0.25)^2;
f=f2+f3;

elseif(s==17)  % 7 Extended Penalty function 
n=length(x);      %x0=[1;2;3;4;5...n]
f1=0;
f2=0;
for j=1:n
    a=x(j)^2;
    f1=f1+a;
end
for i=1:n-1
    b=(x(i)-1)^2;
    f2=f2+b;
end
f3=(f1-0.25)^2;
f=f2+f3;

elseif(s==18)  % 8 Perturbed Quadratic function  
n=length(x);      %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=i*x(i)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i);
    f2=f2+b;
end
f=f1+0.01*f2^2;

elseif(s==19)  % 8 Perturbed Quadratic function  
n=length(x);      %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=i*x(i)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i);
    f2=f2+b;
end
f=f1+0.01*f2^2;

elseif(s==20)  % 8 Perturbed Quadratic function  
n=length(x);      %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=i*x(i)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i);
    f2=f2+b;
end
f=f1+0.01*f2^2;

elseif(s==21)  % 8 Perturbed Quadratic function  
n=length(x);      %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=i*x(i)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i);
    f2=f2+b;
end
f=f1+0.01*f2^2;

elseif(s==22)  % 8 Perturbed Quadratic function  
n=length(x);      %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=i*x(i)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i);
    f2=f2+b;
end
f=f1+0.01*f2^2;

elseif(s==23)  %  10 Raydan 2 function  
f=0;                %x0=[1;1;1;1;.....]
n=length(x);
for  i=1:n
    a=exp(x(i))-x(i);
    f=f+a;
end

elseif(s==24)  %  10 Raydan 2 function  
f=0;                %x0=[1;1;1;1;.....]
n=length(x);
for  i=1:n
    a=exp(x(i))-x(i);
    f=f+a;
end

elseif(s==25)  %  10 Raydan 2 function  
f=0;                %x0=[1;1;1;1;.....]
n=length(x);
for  i=1:n
    a=exp(x(i))-x(i);
    f=f+a;
end

elseif(s==26)  %  10 Raydan 2 function  
f=0;                %x0=[1;1;1;1;.....]
n=length(x);
for  i=1:n
    a=exp(x(i))-x(i);
    f=f+a;
end

elseif(s==27)  %  10 Raydan 2 function  
f=0;                %x0=[1;1;1;1;.....]
n=length(x);
for  i=1:n
    a=exp(x(i))-x(i);
    f=f+a;
end

elseif(s==28)  %  11 Diagonal 1 function 
f=0;              %x0=[1/n;1/n;1/n;1/n;1/n;...1/n] 
n=length(x);
for i=1:n
    a=exp(x(i))-i*x(i);
    f=f+a;
end

elseif(s==29)  %  11 Diagonal 1 function 
f=0;              %x0=[1/n;1/n;1/n;1/n;1/n;...1/n] 
n=length(x);
for i=1:n
    a=exp(x(i))-i*x(i);
    f=f+a;
end

elseif(s==30)  %  11 Diagonal 1 function 
f=0;              %x0=[1/n;1/n;1/n;1/n;1/n;...1/n] 
n=length(x);
for i=1:n
    a=exp(x(i))-i*x(i);
    f=f+a;
end

elseif(s==31)  %  11 Diagonal 1 function 
f=0;              %x0=[1/n;1/n;1/n;1/n;1/n;...1/n] 
n=length(x);
for i=1:n
    a=exp(x(i))-i*x(i);
    f=f+a;
end

elseif(s==32)  %  11 Diagonal 1 function 
f=0;              %x0=[1/n;1/n;1/n;1/n;1/n;...1/n] 
n=length(x);
for i=1:n
    a=exp(x(i))-i*x(i);
    f=f+a;
end

elseif(s==33) % 13 Diagonal 3 function 
f=0;                   %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-i*sin(x(i));
    f=f+a;
end

elseif(s==34) % 13 Diagonal 3 function 
f=0;                   %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-i*sin(x(i));
    f=f+a;
end

elseif(s==35) % 13 Diagonal 3 function 
f=0;                   %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-i*sin(x(i));
    f=f+a;
end

elseif(s==36) % 13 Diagonal 3 function 
f=0;                   %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-i*sin(x(i));
    f=f+a;
end

elseif(s==37) % 13 Diagonal 3 function 
f=0;                   %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-i*sin(x(i));
    f=f+a;
end

elseif(s==38) %  14  Hager function   
f=0;                      %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-sqrt(i)*x(i);
    f=f+a;
end

elseif(s==39) %  14  Hager function   
f=0;                      %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-sqrt(i)*x(i);
    f=f+a;
end

elseif(s==40) %  14  Hager function   
f=0;                      %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-sqrt(i)*x(i);
    f=f+a;
end

elseif(s==41) %  14  Hager function   
f=0;                      %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-sqrt(i)*x(i);
    f=f+a;
end

elseif(s==42) %  14  Hager function   
f=0;                      %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-sqrt(i)*x(i);
    f=f+a;
end

elseif(s==43)  %  15 Generalized Tridiagonal 1 function 
n=length(x);          %x0=[2;2;2;2;2;...]  
f=0;
for i=1:n-1
    a=(x(i)+x(i+1)-3)^2+(x(i)-x(i+1)+1)^4;
    f=f+a;
end

elseif(s==44)  %  15 Generalized Tridiagonal 1 function 
n=length(x);          %x0=[2;2;2;2;2;...]  
f=0;
for i=1:n-1
    a=(x(i)+x(i+1)-3)^2+(x(i)-x(i+1)+1)^4;
    f=f+a;
end

elseif(s==45)  %  15 Generalized Tridiagonal 1 function 
n=length(x);          %x0=[2;2;2;2;2;...]  
f=0;
for i=1:n-1
    a=(x(i)+x(i+1)-3)^2+(x(i)-x(i+1)+1)^4;
    f=f+a;
end

elseif(s==46)  %  15 Generalized Tridiagonal 1 function 
n=length(x);          %x0=[2;2;2;2;2;...]  
f=0;
for i=1:n-1
    a=(x(i)+x(i+1)-3)^2+(x(i)-x(i+1)+1)^4;
    f=f+a;
end

elseif(s==47)  %  15 Generalized Tridiagonal 1 function 
n=length(x);          %x0=[2;2;2;2;2;...]  
f=0;
for i=1:n-1
    a=(x(i)+x(i+1)-3)^2+(x(i)-x(i+1)+1)^4;
    f=f+a;
end

elseif(s==48)   % 17  Extended TET function 
n=length(x);       %x0=[0.1;0.1;0.1;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum(exp(a+3*b-0.1)+exp(a-3*b-0.1)+exp(-a-0.1));

elseif(s==49)   % 17  Extended TET function 
n=length(x);       %x0=[0.1;0.1;0.1;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum(exp(a+3*b-0.1)+exp(a-3*b-0.1)+exp(-a-0.1));

elseif(s==50)   % 17  Extended TET function 
n=length(x);       %x0=[0.1;0.1;0.1;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum(exp(a+3*b-0.1)+exp(a-3*b-0.1)+exp(-a-0.1));

elseif(s==51)   % 17  Extended TET function 
n=length(x);       %x0=[0.1;0.1;0.1;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum(exp(a+3*b-0.1)+exp(a-3*b-0.1)+exp(-a-0.1));

elseif(s==52)   % 17  Extended TET function 
n=length(x);       %x0=[0.1;0.1;0.1;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum(exp(a+3*b-0.1)+exp(a-3*b-0.1)+exp(-a-0.1));

elseif(s==53) % 19 Diagonal 4 function 
n=length(x);         %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
c=100;
f=sum(0.5*(a.^2+c*b.^2));

elseif(s==54) % 19 Diagonal 4 function 
n=length(x);         %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
c=100;
f=sum(0.5*(a.^2+c*b.^2));

elseif(s==55) % 19 Diagonal 4 function 
n=length(x);         %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
c=100;
f=sum(0.5*(a.^2+c*b.^2));

elseif(s==56) % 19 Diagonal 4 function 
n=length(x);         %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
c=100;
f=sum(0.5*(a.^2+c*b.^2));

elseif(s==57) % 19 Diagonal 4 function 
n=length(x);         %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
c=100;
f=sum(0.5*(a.^2+c*b.^2));

elseif(s==58)  %20 Diagonal 5 function
    n=length(x);   %x0=[1.1;1.1;1.1;...]
    f=0;
    for i=1:n
        a=log(exp(x(i))+exp(-x(i)));
        f=f+a;
    end

elseif(s==59)  %20 Diagonal 5 function
    n=length(x);   %x0=[1.1;1.1;1.1;...]
    f=0;
    for i=1:n
        a=log(exp(x(i))+exp(-x(i)));
        f=f+a;
    end

elseif(s==60)  %20 Diagonal 5 function
    n=length(x);   %x0=[1.1;1.1;1.1;...]
    f=0;
    for i=1:n
        a=log(exp(x(i))+exp(-x(i)));
        f=f+a;
    end

elseif(s==61)  %20 Diagonal 5 function
    n=length(x);   %x0=[1.1;1.1;1.1;...]
    f=0;
    for i=1:n
        a=log(exp(x(i))+exp(-x(i)));
        f=f+a;
    end

elseif(s==62)  %20 Diagonal 5 function
    n=length(x);   %x0=[1.1;1.1;1.1;...]
    f=0;
    for i=1:n
        a=log(exp(x(i))+exp(-x(i)));
        f=f+a;
    end

elseif(s==63)   %  21  Extended Himmelblau function 
n=length(x);              %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b-11).^2+(a+b.^2-7).^2);

elseif(s==64)   %  21  Extended Himmelblau function 
n=length(x);              %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b-11).^2+(a+b.^2-7).^2);

elseif(s==65)   %  22 Generalized White&Holst function  
n=length(x);       %x0=[-1.2;1;-1.2;1...]
a = x(1:n-1);
b = x(2:n);
c = 100;
f = sum(c.*(b - a.^3).^2 + (1 - a).^2);

elseif(s==66)   %  22 Generalized White&Holst function  
n=length(x);       %x0=[-1.2;1;-1.2;1...]
a = x(1:n-1);
b = x(2:n);
c = 100;
f = sum(c.*(b - a.^3).^2 + (1 - a).^2);

elseif(s==67) %  23  Generalized PSC1 function 
n=length(x);        %x0=[3;0.1;3;0.1;...]
f=0;
for i=1:n-1
    a=(x(i)^2+x(i+1)^2+x(i)*x(i+1))^2+(sin(x(i)))^2+(cos(x(i)))^2;
    f=f+a;
end

elseif(s==68) %  23  Generalized PSC1 function 
n=length(x);        %x0=[3;0.1;3;0.1;...]
f=0;
for i=1:n-1
    a=(x(i)^2+x(i+1)^2+x(i)*x(i+1))^2+(sin(x(i)))^2+(cos(x(i)))^2;
    f=f+a;
end

elseif(s==69) %  23  Generalized PSC1 function 
n=length(x);        %x0=[3;0.1;3;0.1;...]
f=0;
for i=1:n-1
    a=(x(i)^2+x(i+1)^2+x(i)*x(i+1))^2+(sin(x(i)))^2+(cos(x(i)))^2;
    f=f+a;
end

elseif(s==70) %  23  Generalized PSC1 function 
n=length(x);        %x0=[3;0.1;3;0.1;...]
f=0;
for i=1:n-1
    a=(x(i)^2+x(i+1)^2+x(i)*x(i+1))^2+(sin(x(i)))^2+(cos(x(i)))^2;
    f=f+a;
end

elseif(s==71) %  23  Generalized PSC1 function 
n=length(x);        %x0=[3;0.1;3;0.1;...]
f=0;
for i=1:n-1
    a=(x(i)^2+x(i+1)^2+x(i)*x(i+1))^2+(sin(x(i)))^2+(cos(x(i)))^2;
    f=f+a;
end

elseif(s==72)  %  24 Extended PSC1 function 
n=length(x);       %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==73)  %  24 Extended PSC1 function 
n=length(x);       %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==74)  %  24 Extended PSC1 function 
n=length(x);       %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==75)  %  24 Extended PSC1 function 
n=length(x);       %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==76)  %  24 Extended PSC1 function 
n=length(x);       %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==77) % 31 Perturbed quadratic diagonal function 
n=length(x);     %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=0.01*i*x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==78) % 31 Perturbed quadratic diagonal function 
n=length(x);     %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=0.01*i*x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==79) % 31 Perturbed quadratic diagonal function 
n=length(x);     %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=0.01*i*x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==80) % 31 Perturbed quadratic diagonal function 
n=length(x);     %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=0.01*i*x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==81) % 31 Perturbed quadratic diagonal function 
n=length(x);     %x0=[0.5;0.5;0.5;0.5...]
f1=0;
f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=0.01*i*x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==82) % 33 Extended Hiebert function 
n=length(x);      %x0=[0;0;0;0;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-10).^2+(a.*b-50000).^2);

elseif(s==83) % 33 Extended Hiebert function 
n=length(x);      %x0=[0;0;0;0;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-10).^2+(a.*b-50000).^2);

elseif(s==84) % 33 Extended Hiebert function 
n=length(x);      %x0=[0;0;0;0;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-10).^2+(a.*b-50000).^2);

elseif(s==85) % 33 Extended Hiebert function 
n=length(x);      %x0=[0;0;0;0;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-10).^2+(a.*b-50000).^2);

elseif(s==86) % 33 Extended Hiebert function 
n=length(x);      %x0=[0;0;0;0;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-10).^2+(a.*b-50000).^2);

elseif(s==87)   %  35 Extended quadratic penalty QP1 function 
n=length(x);              %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n-1
    a=(x(i)^2-2)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i)^2;
    f2=f2+b;
end
f=f1+(f2-0.5)^2;

elseif(s==88)   %  35 Extended quadratic penalty QP1 function 
n=length(x);              %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n-1
    a=(x(i)^2-2)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i)^2;
    f2=f2+b;
end
f=f1+(f2-0.5)^2;

elseif(s==89)   %  35 Extended quadratic penalty QP1 function 
n=length(x);              %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n-1
    a=(x(i)^2-2)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i)^2;
    f2=f2+b;
end
f=f1+(f2-0.5)^2;

elseif(s==90)   %  35 Extended quadratic penalty QP1 function 
n=length(x);              %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n-1
    a=(x(i)^2-2)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i)^2;
    f2=f2+b;
end
f=f1+(f2-0.5)^2;

elseif(s==91)   %  35 Extended quadratic penalty QP1 function 
n=length(x);              %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n-1
    a=(x(i)^2-2)^2;
    f1=f1+a;
end
for i=1:n
    b=x(i)^2;
    f2=f2+b;
end
f=f1+(f2-0.5)^2;

elseif(s==92)   %  38 Extended quadratic exponential EP1 function
n=length(x);       %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((exp(a-b)-5).^2+(a-b).^2.*(a-b-11).^2);

elseif(s==93)   %  38 Extended quadratic exponential EP1 function
n=length(x);       %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((exp(a-b)-5).^2+(a-b).^2.*(a-b-11).^2);

elseif(s==94)   %  38 Extended quadratic exponential EP1 function
n=length(x);       %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((exp(a-b)-5).^2+(a-b).^2.*(a-b-11).^2);

elseif(s==95)   %  38 Extended quadratic exponential EP1 function
n=length(x);       %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((exp(a-b)-5).^2+(a-b).^2.*(a-b-11).^2);

elseif(s==96)   %  38 Extended quadratic exponential EP1 function
n=length(x);       %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((exp(a-b)-5).^2+(a-b).^2.*(a-b-11).^2);

elseif(s==97)   %  39 Extended Tridiagonal 2 function
n=length(x);            %x0=[1;1;1;1;.....]
a=x(1:n-1);
b=x(2:n);
c=0.1;
f=sum((a.*b-1).^2+c*(a+1).*(b+1));

elseif(s==98)   %  39 Extended Tridiagonal 2 function
n=length(x);            %x0=[1;1;1;1;.....]
a=x(1:n-1);
b=x(2:n);
c=0.1;
f=sum((a.*b-1).^2+c*(a+1).*(b+1));

elseif(s==99)   %  39 Extended Tridiagonal 2 function
n=length(x);            %x0=[1;1;1;1;.....]
a=x(1:n-1);
b=x(2:n);
c=0.1;
f=sum((a.*b-1).^2+c*(a+1).*(b+1));

elseif(s==100)   %  39 Extended Tridiagonal 2 function
n=length(x);            %x0=[1;1;1;1;.....]
a=x(1:n-1);
b=x(2:n);
c=0.1;
f=sum((a.*b-1).^2+c*(a+1).*(b+1));

elseif(s==101)   %  39 Extended Tridiagonal 2 function
n=length(x);            %x0=[1;1;1;1;.....]
a=x(1:n-1);
b=x(2:n);
c=0.1;
f=sum((a.*b-1).^2+c*(a+1).*(b+1));

elseif(s==102)       %40   FLETCBV3 function（CUTE）
    n=length(x);
    p=1e-8;
    h=1/(n+1);
    c=1;
    f1=0.5*p*(x(1)^2+x(n)^2);
    f2=0;
    for i=1:n-1
        a=0.5*p*(x(i)-x(i+1))^2;
        f2=f2+a;
    end
    f3=0;
    for i=1:n
        a= p*(h^2+2)/h^2 * x(i) + (c*p/h^2)*cos(x(i));
        f3=f3+a;
    end
    f=f1+f2-f3;

elseif(s==103)       %40   FLETCBV3 function（CUTE）
    n=length(x);
    p=1e-8;
    h=1/(n+1);
    c=1;
    f1=0.5*p*(x(1)^2+x(n)^2);
    f2=0;
    for i=1:n-1
        a=0.5*p*(x(i)-x(i+1))^2;
        f2=f2+a;
    end
    f3=0;
    for i=1:n
        a= p*(h^2+2)/h^2 * x(i) + (c*p/h^2)*cos(x(i));
        f3=f3+a;
    end
    f=f1+f2-f3;

elseif(s==104)       %40   FLETCBV3 function（CUTE）
    n=length(x);
    p=1e-8;
    h=1/(n+1);
    c=1;
    f1=0.5*p*(x(1)^2+x(n)^2);
    f2=0;
    for i=1:n-1
        a=0.5*p*(x(i)-x(i+1))^2;
        f2=f2+a;
    end
    f3=0;
    for i=1:n
        a= p*(h^2+2)/h^2 * x(i) + (c*p/h^2)*cos(x(i));
        f3=f3+a;
    end
    f=f1+f2-f3;

elseif(s==105)       %40   FLETCBV3 function（CUTE）
    n=length(x);
    p=1e-8;
    h=1/(n+1);
    c=1;
    f1=0.5*p*(x(1)^2+x(n)^2);
    f2=0;
    for i=1:n-1
        a=0.5*p*(x(i)-x(i+1))^2;
        f2=f2+a;
    end
    f3=0;
    for i=1:n
        a= p*(h^2+2)/h^2 * x(i) + (c*p/h^2)*cos(x(i));
        f3=f3+a;
    end
    f=f1+f2-f3;

elseif(s==106)       %40   FLETCBV3 function（CUTE）
    n=length(x);
    p=1e-8;
    h=1/(n+1);
    c=1;
    f1=0.5*p*(x(1)^2+x(n)^2);
    f2=0;
    for i=1:n-1
        a=0.5*p*(x(i)-x(i+1))^2;
        f2=f2+a;
    end
    f3=0;
    for i=1:n
        a= p*(h^2+2)/h^2 * x(i) + (c*p/h^2)*cos(x(i));
        f3=f3+a;
    end
    f=f1+f2-f3;

elseif(s==107)    %42   BDQRTIC function
    n=length(x);     %x0=[1;1;1;1;.....]
    f=0;
    for i=1:n-4
        a=(-4*x(i)+3)^2+(x(i)^2+2*x(i+1)^2+3*x(i+2)^2+4*x(i+3)^2+5*x(n)^2)^2;
        f=f+a;
    end

elseif(s==108)    %42   BDQRTIC function
    n=length(x);     %x0=[1;1;1;1;.....]
    f=0;
    for i=1:n-4
        a=(-4*x(i)+3)^2+(x(i)^2+2*x(i+1)^2+3*x(i+2)^2+4*x(i+3)^2+5*x(n)^2)^2;
        f=f+a;
    end

elseif(s==109)  %  43  TRIDIA function(CUTE) 
n=length(x);          %x0=[1;1;1;1;.....]
alpha=2;beta=1;gama=1;sigma=1;
a=gama*(sigma*x(1)-1)^2;
f1=0;
for i=2:n
    b=i*(alpha*x(i)-beta*x(i-1))^2;
    f1=f1+b;
end
f=f1+a;
    
elseif(s==110)  %  43  TRIDIA function(CUTE) 
n=length(x);          %x0=[1;1;1;1;.....]
alpha=2;beta=1;gama=1;sigma=1;
a=gama*(sigma*x(1)-1)^2;
f1=0;
for i=2:n
    b=i*(alpha*x(i)-beta*x(i-1))^2;
    f1=f1+b;
end
f=f1+a;
    
elseif(s==111)  %  43  TRIDIA function(CUTE) 
n=length(x);          %x0=[1;1;1;1;.....]
alpha=2;beta=1;gama=1;sigma=1;
a=gama*(sigma*x(1)-1)^2;
f1=0;
for i=2:n
    b=i*(alpha*x(i)-beta*x(i-1))^2;
    f1=f1+b;
end
f=f1+a;

elseif(s==112)               %44   ARGLINB function
    n=length(x);
    m=n;
    f_in=0;
    f=0;
    for i=1:m
        for j=1:n
            a=i*j*x(j);
            f_in=f_in+a;
        end
        f_in=(f_in-1)^2;
        f=f_in+f;
        f_in=0;
    end

elseif(s==113)               %44   ARGLINB function
    n=length(x);
    m=n;
    f_in=0;
    f=0;
    for i=1:m
        for j=1:n
            a=i*j*x(j);
            f_in=f_in+a;
        end
        f_in=(f_in-1)^2;
        f=f_in+f;
        f_in=0;
    end

elseif(s==114)               %44   ARGLINB function
    n=length(x);
    m=n;
    f_in=0;
    f=0;
    for i=1:m
        for j=1:n
            a=i*j*x(j);
            f_in=f_in+a;
        end
        f_in=(f_in-1)^2;
        f=f_in+f;
        f_in=0;
    end

elseif(s==115)               %44   ARGLINB function
    n=length(x);
    m=n;
    f_in=0;
    f=0;
    for i=1:m
        for j=1:n
            a=i*j*x(j);
            f_in=f_in+a;
        end
        f_in=(f_in-1)^2;
        f=f_in+f;
        f_in=0;
    end

elseif(s==116) %   48  DQDRTIC function(CUTE) 
n=length(x);      %x0=[3;3;3;3;....]
a=x(1:n-2);
b=x(2:n-1);
h=x(3:n);
c=100;
d=100;
f=sum(a.^2+c*b.^2+d*h.^2);    
    
elseif(s==117) %   48  DQDRTIC function(CUTE) 
n=length(x);      %x0=[3;3;3;3;....]
a=x(1:n-2);
b=x(2:n-1);
h=x(3:n);
c=100;
d=100;
f=sum(a.^2+c*b.^2+d*h.^2);    
    
elseif(s==118) %   48  DQDRTIC function(CUTE) 
n=length(x);      %x0=[3;3;3;3;....]
a=x(1:n-2);
b=x(2:n-1);
h=x(3:n);
c=100;
d=100;
f=sum(a.^2+c*b.^2+d*h.^2);    
    
elseif(s==119) %   48  DQDRTIC function(CUTE) 
n=length(x);      %x0=[3;3;3;3;....]
a=x(1:n-2);
b=x(2:n-1);
h=x(3:n);
c=100;
d=100;
f=sum(a.^2+c*b.^2+d*h.^2); 
    
elseif(s==120) %   48  DQDRTIC function(CUTE) 
n=length(x);      %x0=[3;3;3;3;....]
a=x(1:n-2);
b=x(2:n-1);
h=x(3:n);
c=100;
d=100;
f=sum(a.^2+c*b.^2+d*h.^2); 
    
elseif(s==121)       %50   CURLY20 function
    n=length(x);
    k=20;
    f=0;
    for i=1:n
        if(i<=n-k)
            q=sum(x(i:1:i+k));
        else
            q=sum(x(i:1:n));
        end
        a=q^4-20*q^2-0.1*q;
        f=f+a;
    end  

elseif(s==122)       %50   CURLY20 function
    n=length(x);
    k=20;
    f=0;
    for i=1:n
        if(i<=n-k)
            q=sum(x(i:1:i+k));
        else
            q=sum(x(i:1:n));
        end
        a=q^4-20*q^2-0.1*q;
        f=f+a;
    end  

elseif(s==123)       %50   CURLY20 function
    n=length(x);
    k=20;
    f=0;
    for i=1:n
        if(i<=n-k)
            q=sum(x(i:1:i+k));
        else
            q=sum(x(i:1:n));
        end
        a=q^4-20*q^2-0.1*q;
        f=f+a;
    end  

elseif(s==124)       %50   CURLY20 function
    n=length(x);
    k=20;
    f=0;
    for i=1:n
        if(i<=n-k)
            q=sum(x(i:1:i+k));
        else
            q=sum(x(i:1:n));
        end
        a=q^4-20*q^2-0.1*q;
        f=f+a;
    end 

 elseif(s==125)    %107 Dixon-Price Function(源代码没有51，将107放到51)
    n=length(x);
    a=0;
    for i=2:n
        a1=i*(2*x(i)^2-x(i-1))^2;
        a=a+a1;
    end
    f=(x(1)-1)^2+a;

 elseif(s==126)    %107 Dixon-Price Function(源代码没有51，将107放到51)
    n=length(x);
    a=0;
    for i=2:n
        a1=i*(2*x(i)^2-x(i-1))^2;
        a=a+a1;
    end
    f=(x(1)-1)^2+a;

 elseif(s==127)    %107 Dixon-Price Function(源代码没有51，将107放到51)
    n=length(x);
    a=0;
    for i=2:n
        a1=i*(2*x(i)^2-x(i-1))^2;
        a=a+a1;
    end
    f=(x(1)-1)^2+a;

 elseif(s==128)    %107 Dixon-Price Function(源代码没有51，将107放到51)
    n=length(x);
    a=0;
    for i=2:n
        a1=i*(2*x(i)^2-x(i-1))^2;
        a=a+a1;
    end
    f=(x(1)-1)^2+a;

elseif(s==129)   %55   Perturbed Tridiagonal Quadratic function  
    n=length(x);   %x0=[0.5;0.5;0.5;0.5...]
    f=0;
    for i=2:n-1
        a=i*x(i)^2+(x(i-1)+x(i)+x(i+1))^2;
        f=f+a;
    end
    f=f+x(1)^2;

elseif(s==130)   %55   Perturbed Tridiagonal Quadratic function  
    n=length(x);   %x0=[0.5;0.5;0.5;0.5...]
    f=0;
    for i=2:n-1
        a=i*x(i)^2+(x(i-1)+x(i)+x(i+1))^2;
        f=f+a;
    end
    f=f+x(1)^2;

elseif(s==131)   %55   Perturbed Tridiagonal Quadratic function  
    n=length(x);   %x0=[0.5;0.5;0.5;0.5...]
    f=0;
    for i=2:n-1
        a=i*x(i)^2+(x(i-1)+x(i)+x(i+1))^2;
        f=f+a;
    end
    f=f+x(1)^2;

elseif(s==132)   %55   Perturbed Tridiagonal Quadratic function  
    n=length(x);   %x0=[0.5;0.5;0.5;0.5...]
    f=0;
    for i=2:n-1
        a=i*x(i)^2+(x(i-1)+x(i)+x(i+1))^2;
        f=f+a;
    end
    f=f+x(1)^2;

elseif(s==133)  %  59  POWER function(CUTE)
n=length(x);      %x0=[1;1;1;1;.....]
f=0;
for i=1:n
    a=(i*x(i))^2;
    f=f+a;
end
    
elseif(s==134)  %  59  POWER function(CUTE)
n=length(x);      %x0=[1;1;1;1;.....]
f=0;
for i=1:n
    a=(i*x(i))^2;
    f=f+a;
end
    
elseif(s==135)  %  59  POWER function(CUTE)
n=length(x);      %x0=[1;1;1;1;.....]
f=0;
for i=1:n
    a=(i*x(i))^2;
    f=f+a;
end

elseif(s==136)    %62   EDENSCH function
    n=length(x);      %x0=[0;0;0;0;...]
    f=0;
    for i=1:n-1
        a=(x(i)-2)^4+(x(i)*x(i+1)-2*x(i+1))^2+(x(i+1)+1)^2;
        f=f+a;
    end 

elseif(s==137)    %62   EDENSCH function
    n=length(x);      %x0=[0;0;0;0;...]
    f=0;
    for i=1:n-1
        a=(x(i)-2)^4+(x(i)*x(i+1)-2*x(i+1))^2+(x(i+1)+1)^2;
        f=f+a;
    end 

elseif(s==138)    %62   EDENSCH function
    n=length(x);      %x0=[0;0;0;0;...]
    f=0;
    for i=1:n-1
        a=(x(i)-2)^4+(x(i)*x(i+1)-2*x(i+1))^2+(x(i+1)+1)^2;
        f=f+a;
    end 

elseif(s==139)    %62   EDENSCH function
    n=length(x);      %x0=[0;0;0;0;...]
    f=0;
    for i=1:n-1
        a=(x(i)-2)^4+(x(i)*x(i+1)-2*x(i+1))^2+(x(i+1)+1)^2;
        f=f+a;
    end 

elseif(s==140)    %62   EDENSCH function
    n=length(x);      %x0=[0;0;0;0;...]
    f=0;
    for i=1:n-1
        a=(x(i)-2)^4+(x(i)*x(i+1)-2*x(i+1))^2+(x(i+1)+1)^2;
        f=f+a;
    end 

elseif(s==141) % 68 BDEXP function(CUTE)
n=length(x);        %x0=[1;1;1;1;.....]
f=0;
for i=1:n-2
    a=(x(i)+x(i+1))*exp(-x(i+2)*(x(i)+x(i+1)));
    f=f+a;
end
      
elseif(s==142) % 68 BDEXP function(CUTE)
n=length(x);        %x0=[1;1;1;1;.....]
f=0;
for i=1:n-2
    a=(x(i)+x(i+1))*exp(-x(i+2)*(x(i)+x(i+1)));
    f=f+a;
end
      
elseif(s==143) % 68 BDEXP function(CUTE)
n=length(x);        %x0=[1;1;1;1;.....]
f=0;
for i=1:n-2
    a=(x(i)+x(i+1))*exp(-x(i+2)*(x(i)+x(i+1)));
    f=f+a;
end
      
elseif(s==144) % 68 BDEXP function(CUTE)
n=length(x);        %x0=[1;1;1;1;.....]
f=0;
for i=1:n-2
    a=(x(i)+x(i+1))*exp(-x(i+2)*(x(i)+x(i+1)));
    f=f+a;
end

elseif(s==145)   %  73  VARDIM function(CUTE) 
n=length(x);       %x0=[1-1/n;1-2/n;...1-n/n]
a=0.5*n*(n+1);
f1=0;f2=0;
for i=1:n
    b=(x(i)-1)^2;
    f1=f1+b;
end
for i=1:n
    c=i*x(i);
    f2=f2+c;
end
f=f1+(f2-a)^2+(f2-a)^4;

elseif(s==146)   %  73  VARDIM function(CUTE) 
n=length(x);       %x0=[1-1/n;1-2/n;...1-n/n]
a=0.5*n*(n+1);
f1=0;f2=0;
for i=1:n
    b=(x(i)-1)^2;
    f1=f1+b;
end
for i=1:n
    c=i*x(i);
    f2=f2+c;
end
f=f1+(f2-a)^2+(f2-a)^4;

elseif(s==147)   %  73  VARDIM function(CUTE) 
n=length(x);       %x0=[1-1/n;1-2/n;...1-n/n]
a=0.5*n*(n+1);
f1=0;f2=0;
for i=1:n
    b=(x(i)-1)^2;
    f1=f1+b;
end
for i=1:n
    c=i*x(i);
    f2=f2+c;
end
f=f1+(f2-a)^2+(f2-a)^4;

elseif(s==148)   %  73  VARDIM function(CUTE) 
n=length(x);       %x0=[1-1/n;1-2/n;...1-n/n]
a=0.5*n*(n+1);
f1=0;f2=0;
for i=1:n
    b=(x(i)-1)^2;
    f1=f1+b;
end
for i=1:n
    c=i*x(i);
    f2=f2+c;
end
f=f1+(f2-a)^2+(f2-a)^4;

elseif(s==149)  %  74  QUARTC function(CUTE) 
f=0;               %x0=[2;2;2;2;2;...]  
n=length(x);
for i=1:n
    a=(x(i)-1)^4;
    f=f+a;
end

elseif(s==150)  %  74  QUARTC function(CUTE) 
f=0;               %x0=[2;2;2;2;2;...]  
n=length(x);
for i=1:n
    a=(x(i)-1)^4;
    f=f+a;
end

elseif(s==151)  %  74  QUARTC function(CUTE) 
f=0;               %x0=[2;2;2;2;2;...]  
n=length(x);
for i=1:n
    a=(x(i)-1)^4;
    f=f+a;
end

elseif(s==152)  %  74  QUARTC function(CUTE) 
f=0;               %x0=[2;2;2;2;2;...]  
n=length(x);
for i=1:n
    a=(x(i)-1)^4;
    f=f+a;
end

elseif(s==153)  %  74  QUARTC function(CUTE) 
f=0;               %x0=[2;2;2;2;2;...]  
n=length(x);
for i=1:n
    a=(x(i)-1)^4;
    f=f+a;
end

elseif(s==154)   %   77 Extended DENSCHNB function 
n=length(x);             %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-2).^2+((a-2).^2).*b.^2+(b+1).^2);

elseif(s==155)   %   77 Extended DENSCHNB function 
n=length(x);             %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-2).^2+((a-2).^2).*b.^2+(b+1).^2);

elseif(s==156)   %   77 Extended DENSCHNB function 
n=length(x);             %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-2).^2+((a-2).^2).*b.^2+(b+1).^2);

elseif(s==157)   %   77 Extended DENSCHNB function 
n=length(x);             %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-2).^2+((a-2).^2).*b.^2+(b+1).^2);

elseif(s==158)   %   77 Extended DENSCHNB function 
n=length(x);             %x0=[1;1;1;1;.....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a-2).^2+((a-2).^2).*b.^2+(b+1).^2);

elseif(s==159) % 78 Extended DENSCHNF function 
n=length(x);     %x0=[2;0;2;0...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((2*(a+b).^2+(a-b).^2-8).^2+(5*a.^2+(b-3).^2-9).^2);

elseif(s==160) % 78 Extended DENSCHNF function 
n=length(x);     %x0=[2;0;2;0...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((2*(a+b).^2+(a-b).^2-8).^2+(5*a.^2+(b-3).^2-9).^2);

elseif(s==161) % 78 Extended DENSCHNF function 
n=length(x);     %x0=[2;0;2;0...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((2*(a+b).^2+(a-b).^2-8).^2+(5*a.^2+(b-3).^2-9).^2);

elseif(s==162)   %  81 COSINE function(CUTE)
n=length(x);           %x0=[1;1;1;1;.....]
f=0;
for i=1:n-1
    a=cos(-0.5*x(i+1)+x(i)^2);
    f=f+a;
end

elseif(s==163)   %  81 COSINE function(CUTE)
n=length(x);           %x0=[1;1;1;1;.....]
f=0;
for i=1:n-1
    a=cos(-0.5*x(i+1)+x(i)^2);
    f=f+a;
end

elseif(s==164)   %  81 COSINE function(CUTE)
n=length(x);           %x0=[1;1;1;1;.....]
f=0;
for i=1:n-1
    a=cos(-0.5*x(i+1)+x(i)^2);
    f=f+a;
end

elseif(s==165)   %  81 COSINE function(CUTE)
n=length(x);           %x0=[1;1;1;1;.....]
f=0;
for i=1:n-1
    a=cos(-0.5*x(i+1)+x(i)^2);
    f=f+a;
end

elseif(s==166)   %  81 COSINE function(CUTE)
n=length(x);           %x0=[1;1;1;1;.....]
f=0;
for i=1:n-1
    a=cos(-0.5*x(i+1)+x(i)^2);
    f=f+a;
end

elseif(s==167)       %   84  Generalized Quartic function
n = length(x);          %x0=[1;1;1;1;.....]
a = x(1:n-1);
b = x(2:n);
c=a.^2;
f=sum(c+(b+c).^2);

elseif(s==168)       %   84  Generalized Quartic function
n = length(x);          %x0=[1;1;1;1;.....]
a = x(1:n-1);
b = x(2:n);
c=a.^2;
f=sum(c+(b+c).^2);

elseif(s==169)       %   84  Generalized Quartic function
n = length(x);          %x0=[1;1;1;1;.....]
a = x(1:n-1);
b = x(2:n);
c=a.^2;
f=sum(c+(b+c).^2);

elseif(s==170)       %   84  Generalized Quartic function
n = length(x);          %x0=[1;1;1;1;.....]
a = x(1:n-1);
b = x(2:n);
c=a.^2;
f=sum(c+(b+c).^2);

elseif(s==171)       %   84  Generalized Quartic function
n = length(x);          %x0=[1;1;1;1;.....]
a = x(1:n-1);
b = x(2:n);
c=a.^2;
f=sum(c+(b+c).^2);

elseif(s==172)  %  85  Diagonal 7 function
f=0;                 %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==173)  %  85  Diagonal 7 function
f=0;                 %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==174)  %  85  Diagonal 7 function
f=0;                 %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==175)  %  85  Diagonal 7 function
f=0;                 %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==176)  %  85  Diagonal 7 function
f=0;                 %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==177)  %  86  Diagonal 8 function
f=0;               %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==178)  %  86  Diagonal 8 function
f=0;               %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==179)  %  86  Diagonal 8 function
f=0;               %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==180)  %  86  Diagonal 8 function
f=0;               %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==181)  %  86  Diagonal 8 function
f=0;               %x0=[1;1;1;1;.....]
n=length(x);
for i=1:n
    a=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f=f+a;
end

elseif(s==182) % 87 Full Hessian FH3 function 
n=length(x);      %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==183) % 87 Full Hessian FH3 function 
n=length(x);      %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==184) % 87 Full Hessian FH3 function 
n=length(x);      %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==185) % 87 Full Hessian FH3 function 
n=length(x);      %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==186) % 87 Full Hessian FH3 function 
n=length(x);      %x0=[1;1;1;1;.....]
f1=0;f2=0;
for i=1:n
    a=x(i);
    f1=f1+a;
end
for i=1:n
    b=x(i)*exp(x(i))-2*x(i)-x(i)^2;
    f2=f2+b;
end
f=f1^2+f2;

elseif(s==187)  %  88 SINCOS function 
n=length(x);      %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==188)  %  88 SINCOS function 
n=length(x);      %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==189)  %  88 SINCOS function 
n=length(x);      %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==190)  %  88 SINCOS function 
n=length(x);      %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==191)  %  88 SINCOS function 
n=length(x);      %x0=[3;0.1;3;0.1;...]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((a.^2+b.^2+a.*b).^2+(sin(a)).^2+(cos(b)).^2);

elseif(s==192)  % 89 Diagonal 9 function
n=length(x);      %x0=[1;1;1;1;.....]
f1=0;
for i=1:n-1
    a=exp(x(i))-i*x(i);
    f1=f1+a;
end
b=10000*x(n)^2;
f=f1+b;

elseif(s==193)  %  90 HIMMELBG function(CUTE) 
n=length(x);      %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((2*a.^2+3*b.^2).*exp(-a-b));

elseif(s==194)  %  90 HIMMELBG function(CUTE) 
n=length(x);      %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((2*a.^2+3*b.^2).*exp(-a-b));

elseif(s==195)  %  90 HIMMELBG function(CUTE) 
n=length(x);      %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((2*a.^2+3*b.^2).*exp(-a-b));

elseif(s==196)  %  90 HIMMELBG function(CUTE) 
n=length(x);      %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((2*a.^2+3*b.^2).*exp(-a-b));

elseif(s==197)  %  90 HIMMELBG function(CUTE) 
n=length(x);      %x0=[1.5;1.5;1.5;1.5;....]
a=x(1:2:n-1);
b=x(2:2:n);
f=sum((2*a.^2+3*b.^2).*exp(-a-b));

elseif(s==198)   % 92 Broyden banded function
    n=length(x);
    f=0;
    a=5;
    b=1;
    for i=1:n
        a1=max(1,i-a);
        b1=min(n,i+b);
        c1=x(i)*(2+5*x(i)^2)+1;
        for j=a1:b1
            c=x(j)*(1+x(j));
            f=f-c;
        end
        f=f+c1;
    end

elseif(s==199)   % 92 Broyden banded function
    n=length(x);
    f=0;
    a=5;
    b=1;
    for i=1:n
        a1=max(1,i-a);
        b1=min(n,i+b);
        c1=x(i)*(2+5*x(i)^2)+1;
        for j=a1:b1
            c=x(j)*(1+x(j));
            f=f-c;
        end
        f=f+c1;
    end

elseif(s==200) % 99 Csendes function
    n=length(x);
    f=0;
    for i=1:n
        c=(x(i)^6)*(2+sin(1/(x(i))));
        f=f+c;
    end

elseif(s==201) % 99 Csendes function
    n=length(x);
    f=0;
    for i=1:n
        c=(x(i)^6)*(2+sin(1/(x(i))));
        f=f+c;
    end

elseif(s==202) % 99 Csendes function
    n=length(x);
    f=0;
    for i=1:n
        c=(x(i)^6)*(2+sin(1/(x(i))));
        f=f+c;
    end

elseif(s==203) % 99 Csendes function
    n=length(x);
    f=0;
    for i=1:n
        c=(x(i)^6)*(2+sin(1/(x(i))));
        f=f+c;
    end

elseif(s==204) % 99 Csendes function
    n=length(x);
    f=0;
    for i=1:n
        c=(x(i)^6)*(2+sin(1/(x(i))));
        f=f+c;
    end

elseif(s==205)  % 101 Sphere function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2;
        f=f+c;
    end

elseif(s==206)  % 101 Sphere function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2;
        f=f+c;
    end

elseif(s==207)  % 101 Sphere function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2;
        f=f+c;
    end

elseif(s==208)  % 101 Sphere function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2;
        f=f+c;
    end

elseif(s==209)  % 101 Sphere function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2;
        f=f+c;
    end

elseif(s==210)  % 102 Rastrigr function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2-10*cos(2*pi*x(i))+10;
        f=f+c;
    end

elseif(s==211)  % 102 Rastrigr function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2-10*cos(2*pi*x(i))+10;
        f=f+c;
    end

elseif(s==212)  % 102 Rastrigr function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2-10*cos(2*pi*x(i))+10;
        f=f+c;
    end

elseif(s==213)  % 102 Rastrigr function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2-10*cos(2*pi*x(i))+10;
        f=f+c;
    end

elseif(s==214)  % 102 Rastrigr function
    n=length(x);
    f=0;
    for i=1:n
        c=x(i)^2-10*cos(2*pi*x(i))+10;
        f=f+c;
    end

elseif(s==215) % 103 Sum Squares Function
    n=length(x);
    f=0;
    for i=1:n
        c=i*x(i)^2;
        f=f+c;
    end

elseif(s==216) % 103 Sum Squares Function
    n=length(x);
    f=0;
    for i=1:n
        c=i*x(i)^2;
        f=f+c;
    end

elseif(s==217) % 103 Sum Squares Function
    n=length(x);
    f=0;
    for i=1:n
        c=i*x(i)^2;
        f=f+c;
    end

elseif(s==218) % 103 Sum Squares Function
    n=length(x);
    f=0;
    for i=1:n
        c=i*x(i)^2;
        f=f+c;
    end

elseif(s==219) % 106 Styblinski-Tang Function
    n=length(x);
    a=0;
    for i=1:n
        a1=x(i)^4-16*x(i)^2+5*x(i);
        a=a+a1;
    end
    f=a/2;

elseif(s==220) % 106 Styblinski-Tang Function
    n=length(x);
    a=0;
    for i=1:n
        a1=x(i)^4-16*x(i)^2+5*x(i);
        a=a+a1;
    end
    f=a/2;

elseif(s==221) % 106 Styblinski-Tang Function
    n=length(x);
    a=0;
    for i=1:n
        a1=x(i)^4-16*x(i)^2+5*x(i);
        a=a+a1;
    end
    f=a/2;

elseif(s==222) % 106 Styblinski-Tang Function
    n=length(x);
    a=0;
    for i=1:n
        a1=x(i)^4-16*x(i)^2+5*x(i);
        a=a+a1;
    end
    f=a/2;

elseif(s==223) % 106 Styblinski-Tang Function
    n=length(x);
    a=0;
    for i=1:n
        a1=x(i)^4-16*x(i)^2+5*x(i);
        a=a+a1;
    end
    f=a/2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%新增函数

elseif(s==224)    %65   EXPLIN1 function
    n=length(x);     %x0=[0;0;0;0;...]
    f1=0;
    for i=1:n-1
        a=exp(0.1*x(i)*x(i+1));
        f1=f1+a;
    end
    f2=0;
    for i=1:n
        a=i*x(i);
        f2=f2+a;
    end
    f=f1-10*f2;

elseif(s==225)    %65   EXPLIN1 function
    n=length(x);     %x0=[0;0;0;0;...]
    f1=0;
    for i=1:n-1
        a=exp(0.1*x(i)*x(i+1));
        f1=f1+a;
    end
    f2=0;
    for i=1:n
        a=i*x(i);
        f2=f2+a;
    end
    f=f1-10*f2;

elseif(s==226)    %65   EXPLIN1 function
    n=length(x);     %x0=[0;0;0;0;...]
    f1=0;
    for i=1:n-1
        a=exp(0.1*x(i)*x(i+1));
        f1=f1+a;
    end
    f2=0;
    for i=1:n
        a=i*x(i);
        f2=f2+a;
    end
    f=f1-10*f2;

elseif(s==227)   % 66  EXPLIN2 function
     n=length(x);     %x0=[0;0;0;0;...]
    f1=0;
    m=n-1;
    for i=1:m
        a=exp(i*x(i)*x(i+1)/(10*m));
        f1=f1+a;
    end
    f2=0;
    for i=1:n
        a=i*x(i);
        f2=f2+a;
    end
    f=f1-10*f2;

elseif(s==228)   % 66  EXPLIN2 function
     n=length(x);     %x0=[0;0;0;0;...]
    f1=0;
    m=n-1;
    for i=1:m
        a=exp(i*x(i)*x(i+1)/(10*m));
        f1=f1+a;
    end
    f2=0;
    for i=1:n
        a=i*x(i);
        f2=f2+a;
    end
    f=f1-10*f2;

elseif(s==229)  %  83  BIGGSB1 function(CUTE) 
n=length(x);      %x0=[0;0;0;0;...]
f1=0;
for i=1:n-1
    a=(x(i+1)-x(i))^2;
    f1=f1+a;
end
b=(x(1)-1)^2;
c=(1-x(n))^2;
f=f1+b+c;

elseif(s==230)   % 95 Generalization of the Brown function 2
    n=length(x);   
    f=0;
    for i=2:n
        c=(x(i-1)^2)^(x(i)^2+1)+(x(i)^2)^(x(i-1)^2+1);
        f=f+c;
    end

elseif(s==231)   % 95 Generalization of the Brown function 2
    n=length(x);   
    f=0;
    for i=2:n
        c=(x(i-1)^2)^(x(i)^2+1)+(x(i)^2)^(x(i-1)^2+1);
        f=f+c;
    end

elseif(s==232)  % 104 Trid Function
    n=length(x);
    a=0;
    b=0;
    for i=1:n
        a1=(x(i)-1)^2;
        a=a+a1;
    end
    for j=2:n
        b1=x(j)*x(j-1);
        b=b+b1;
    end
    f=a-b;

elseif(s==233)  % 104 Trid Function
    n=length(x);
    a=0;
    b=0;
    for i=1:n
        a1=(x(i)-1)^2;
        a=a+a1;
    end
    for j=2:n
        b1=x(j)*x(j-1);
        b=b+b1;
    end
    f=a-b;
end
end