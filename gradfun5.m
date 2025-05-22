function [g] = gradfun5(x,fun_num)
switch(fun_num)
    case 1    %  1  Extended Freudenstein & Roth function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(-13+a+5*b.^2-b.^3-2*b)+2*(-29+a+b.^3+b.^2-14*b);
        d=2*(-13+a+5*b.^2-b.^3-2*b).*(10*b-3*b.^2-2)+2*(-29+a+b.^3+b.^2-14*b).*(3*b.^2+2*b-14);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 2    %  1  Extended Freudenstein & Roth function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(-13+a+5*b.^2-b.^3-2*b)+2*(-29+a+b.^3+b.^2-14*b);
        d=2*(-13+a+5*b.^2-b.^3-2*b).*(10*b-3*b.^2-2)+2*(-29+a+b.^3+b.^2-14*b).*(3*b.^2+2*b-14);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 3    %  1  Extended Freudenstein & Roth function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(-13+a+5*b.^2-b.^3-2*b)+2*(-29+a+b.^3+b.^2-14*b);
        d=2*(-13+a+5*b.^2-b.^3-2*b).*(10*b-3*b.^2-2)+2*(-29+a+b.^3+b.^2-14*b).*(3*b.^2+2*b-14);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 4    %  1  Extended Freudenstein & Roth function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(-13+a+5*b.^2-b.^3-2*b)+2*(-29+a+b.^3+b.^2-14*b);
        d=2*(-13+a+5*b.^2-b.^3-2*b).*(10*b-3*b.^2-2)+2*(-29+a+b.^3+b.^2-14*b).*(3*b.^2+2*b-14);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 5   % 2 Extended Trigonometric function
        n=length(x);
        f1=0;
        b1=zeros(n,1);
        c1=zeros(n,1);
        g=zeros(n,1);
        for j=1:n
            f1=f1+cos(x(j));
        end
        for i=1:n
            b1(i)=2*(n-f1+i*(1-cos(x(i)))-sin(x(i)))*sin(x(i));
            c1(i)=(n-f1+i*(1-cos(x(i)))-sin(x(i)))*(i*sin(x(i))-cos(x(i)));
        end
        for i=1:n
            g(i)=c1(i)+sin(x(i))*sum(b1);
        end

    case 6   % 2 Extended Trigonometric function
        n=length(x);
        f1=0;
        b1=zeros(n,1);
        c1=zeros(n,1);
        g=zeros(n,1);
        for j=1:n
            f1=f1+cos(x(j));
        end
        for i=1:n
            b1(i)=2*(n-f1+i*(1-cos(x(i)))-sin(x(i)))*sin(x(i));
            c1(i)=(n-f1+i*(1-cos(x(i)))-sin(x(i)))*(i*sin(x(i))-cos(x(i)));
        end
        for i=1:n
            g(i)=c1(i)+sin(x(i))*sum(b1);
        end

    case 7   % 2 Extended Trigonometric function
        n=length(x);
        f1=0;
        b1=zeros(n,1);
        c1=zeros(n,1);
        g=zeros(n,1);
        for j=1:n
            f1=f1+cos(x(j));
        end
        for i=1:n
            b1(i)=2*(n-f1+i*(1-cos(x(i)))-sin(x(i)))*sin(x(i));
            c1(i)=(n-f1+i*(1-cos(x(i)))-sin(x(i)))*(i*sin(x(i))-cos(x(i)));
        end
        for i=1:n
            g(i)=c1(i)+sin(x(i))*sum(b1);
        end

    case 8   % 2 Extended Trigonometric function
        n=length(x);
        f1=0;
        b1=zeros(n,1);
        c1=zeros(n,1);
        g=zeros(n,1);
        for j=1:n
            f1=f1+cos(x(j));
        end
        for i=1:n
            b1(i)=2*(n-f1+i*(1-cos(x(i)))-sin(x(i)))*sin(x(i));
            c1(i)=(n-f1+i*(1-cos(x(i)))-sin(x(i)))*(i*sin(x(i))-cos(x(i)));
        end
        for i=1:n
            g(i)=c1(i)+sin(x(i))*sum(b1);
        end

    case 9   % 2 Extended Trigonometric function
        n=length(x);
        f1=0;
        b1=zeros(n,1);
        c1=zeros(n,1);
        g=zeros(n,1);
        for j=1:n
            f1=f1+cos(x(j));
        end
        for i=1:n
            b1(i)=2*(n-f1+i*(1-cos(x(i)))-sin(x(i)))*sin(x(i));
            c1(i)=(n-f1+i*(1-cos(x(i)))-sin(x(i)))*(i*sin(x(i))-cos(x(i)));
        end
        for i=1:n
            g(i)=c1(i)+sin(x(i))*sum(b1);
        end

    case 10 % 4 Generalized Rosenbrock function)
        n = length(x);
        a = x(1:n-1);
        b = x(2:n);
        c = 100;
        a1 = 2*c*(b-a.^2);
        b1 =a1.*(-2*a)-2*(1-a);
        e = [0;a1];
        d = [b1;0];
        g = d + e;

    case 11 % 4 Generalized Rosenbrock function)
        n = length(x);
        a = x(1:n-1);
        b = x(2:n);
        c = 100;
        a1 = 2*c*(b-a.^2);
        b1 =a1.*(-2*a)-2*(1-a);
        e = [0;a1];
        d = [b1;0];
        g = d + e;

    case 12 % 4 Generalized Rosenbrock function)
        n = length(x);
        a = x(1:n-1);
        b = x(2:n);
        c = 100;
        a1 = 2*c*(b-a.^2);
        b1 =a1.*(-2*a)-2*(1-a);
        e = [0;a1];
        d = [b1;0];
        g = d + e;

    case 13  % 7 Extended Penalty function
        n=length(x);
        f1=0;
        a=x(1:n-1);
        for j=1:n
            b=x(j)^2;
            f1=f1+b;
        end
        g1=2*(a-1)+2*(f1-0.25)*(2*a);
        g2=2*(f1-0.25)*(2*x(n));
        g=[g1;g2];

    case 14  % 7 Extended Penalty function
        n=length(x);
        f1=0;
        a=x(1:n-1);
        for j=1:n
            b=x(j)^2;
            f1=f1+b;
        end
        g1=2*(a-1)+2*(f1-0.25)*(2*a);
        g2=2*(f1-0.25)*(2*x(n));
        g=[g1;g2];

    case 15  % 7 Extended Penalty function
        n=length(x);
        f1=0;
        a=x(1:n-1);
        for j=1:n
            b=x(j)^2;
            f1=f1+b;
        end
        g1=2*(a-1)+2*(f1-0.25)*(2*a);
        g2=2*(f1-0.25)*(2*x(n));
        g=[g1;g2];

    case 16  % 7 Extended Penalty function
        n=length(x);
        f1=0;
        a=x(1:n-1);
        for j=1:n
            b=x(j)^2;
            f1=f1+b;
        end
        g1=2*(a-1)+2*(f1-0.25)*(2*a);
        g2=2*(f1-0.25)*(2*x(n));
        g=[g1;g2];

    case 17  % 7 Extended Penalty function
        n=length(x);
        f1=0;
        a=x(1:n-1);
        for j=1:n
            b=x(j)^2;
            f1=f1+b;
        end
        g1=2*(a-1)+2*(f1-0.25)*(2*a);
        g2=2*(f1-0.25)*(2*x(n));
        g=[g1;g2];

    case 18         % 8 Perturbed Quadratic function
        n=length(x);
        g=zeros(n,1);
        f2=0;
        for i=1:n
            b=x(i);
            f2=f2+b;
        end
        for i=1:n
            g(i)=2*i*x(i)+0.02*f2;
        end

    case 19         % 8 Perturbed Quadratic function
        n=length(x);
        g=zeros(n,1);
        f2=0;
        for i=1:n
            b=x(i);
            f2=f2+b;
        end
        for i=1:n
            g(i)=2*i*x(i)+0.02*f2;
        end

    case 20        % 8 Perturbed Quadratic function
        n=length(x);
        g=zeros(n,1);
        f2=0;
        for i=1:n
            b=x(i);
            f2=f2+b;
        end
        for i=1:n
            g(i)=2*i*x(i)+0.02*f2;
        end

    case 21         % 8 Perturbed Quadratic function
        n=length(x);
        g=zeros(n,1);
        f2=0;
        for i=1:n
            b=x(i);
            f2=f2+b;
        end
        for i=1:n
            g(i)=2*i*x(i)+0.02*f2;
        end

    case 22         % 8 Perturbed Quadratic function
        n=length(x);
        g=zeros(n,1);
        f2=0;
        for i=1:n
            b=x(i);
            f2=f2+b;
        end
        for i=1:n
            g(i)=2*i*x(i)+0.02*f2;
        end

    case 23 % 10 Raydan 2 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-1;

    case 24 % 10 Raydan 2 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-1;

    case 25 % 10 Raydan 2 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-1;

    case 26 % 10 Raydan 2 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-1;

    case 27 % 10 Raydan 2 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-1;
        
    case 28   % 11 Diagonal 1 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b';

    case 29   % 11 Diagonal 1 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b';

    case 30   % 11 Diagonal 1 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b';

    case 31   % 11 Diagonal 1 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b';

    case 32   % 11 Diagonal 1 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b';

    case 33   % 13 Diagonal 3 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b'.*cos(a);

    case 34   % 13 Diagonal 3 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b'.*cos(a);

    case 35   % 13 Diagonal 3 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b'.*cos(a);

    case 36   % 13 Diagonal 3 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b'.*cos(a);

    case 37   % 13 Diagonal 3 function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-b'.*cos(a);

    case 38    % 14 Hager function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-sqrt(b');

    case 39    % 14 Hager function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-sqrt(b');

    case 40    % 14 Hager function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-sqrt(b');

    case 41    % 14 Hager function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-sqrt(b');

    case 42    % 14 Hager function
        n=length(x);
        a=x(1:n);
        b=(1:n);
        g=exp(a)-sqrt(b');

    case 43   %  15 Generalized Tridiagonal 1 function
        n = length(x);
        a = x(1:n-1);
        b = x(2:n);
        c = 2*(a+b-3)-4*(a-b+1).^3;
        d = 2*(a+b-3)+4*(a-b+1).^3;
        e = [0;c];
        f = [d;0];
        g = e + f;

    case 44   %  15 Generalized Tridiagonal 1 function
        n = length(x);
        a = x(1:n-1);
        b = x(2:n);
        c = 2*(a+b-3)-4*(a-b+1).^3;
        d = 2*(a+b-3)+4*(a-b+1).^3;
        e = [0;c];
        f = [d;0];
        g = e + f;

    case 45   %  15 Generalized Tridiagonal 1 function
        n = length(x);
        a = x(1:n-1);
        b = x(2:n);
        c = 2*(a+b-3)-4*(a-b+1).^3;
        d = 2*(a+b-3)+4*(a-b+1).^3;
        e = [0;c];
        f = [d;0];
        g = e + f;

    case 46   %  15 Generalized Tridiagonal 1 function
        n = length(x);
        a = x(1:n-1);
        b = x(2:n);
        c = 2*(a+b-3)-4*(a-b+1).^3;
        d = 2*(a+b-3)+4*(a-b+1).^3;
        e = [0;c];
        f = [d;0];
        g = e + f;

    case 47   %  15 Generalized Tridiagonal 1 function
        n = length(x);
        a = x(1:n-1);
        b = x(2:n);
        c = 2*(a+b-3)-4*(a-b+1).^3;
        d = 2*(a+b-3)+4*(a-b+1).^3;
        e = [0;c];
        f = [d;0];
        g = e + f;

    case 48   % 17  Extended TET function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=exp(a+3*b-0.1)+exp(a-3*b-0.1)-exp(-a-0.1);
        d=3*exp(a+3*b-0.1)-3*exp(a-3*b-0.1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 49   % 17  Extended TET function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=exp(a+3*b-0.1)+exp(a-3*b-0.1)-exp(-a-0.1);
        d=3*exp(a+3*b-0.1)-3*exp(a-3*b-0.1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 50   % 17  Extended TET function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=exp(a+3*b-0.1)+exp(a-3*b-0.1)-exp(-a-0.1);
        d=3*exp(a+3*b-0.1)-3*exp(a-3*b-0.1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 51   % 17  Extended TET function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=exp(a+3*b-0.1)+exp(a-3*b-0.1)-exp(-a-0.1);
        d=3*exp(a+3*b-0.1)-3*exp(a-3*b-0.1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 52   % 17  Extended TET function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=exp(a+3*b-0.1)+exp(a-3*b-0.1)-exp(-a-0.1);
        d=3*exp(a+3*b-0.1)-3*exp(a-3*b-0.1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 53     % 19 Diagonal 4 function
        n=length(x);
        c=100;
        a=x(1:2:n-1);
        b=x(2:2:n);
        d=c*b;
        g(1:2:n-1)=a;
        g(2:2:n)=d;
        g=g';

    case 54     % 19 Diagonal 4 function
        n=length(x);
        c=100;
        a=x(1:2:n-1);
        b=x(2:2:n);
        d=c*b;
        g(1:2:n-1)=a;
        g(2:2:n)=d;
        g=g';

    case 55     % 19 Diagonal 4 function
        n=length(x);
        c=100;
        a=x(1:2:n-1);
        b=x(2:2:n);
        d=c*b;
        g(1:2:n-1)=a;
        g(2:2:n)=d;
        g=g';

    case 56     % 19 Diagonal 4 function
        n=length(x);
        c=100;
        a=x(1:2:n-1);
        b=x(2:2:n);
        d=c*b;
        g(1:2:n-1)=a;
        g(2:2:n)=d;
        g=g';

    case 57     % 19 Diagonal 4 function
        n=length(x);
        c=100;
        a=x(1:2:n-1);
        b=x(2:2:n);
        d=c*b;
        g(1:2:n-1)=a;
        g(2:2:n)=d;
        g=g';

    case 58   %20   Diagonal 5 function
        n=length(x);
        xi=x(1:n);
        g(1:n)=(exp(2*xi)-1)./(exp(2*xi)+1);
        g=g';

    case 59   %20   Diagonal 5 function
        n=length(x);
        xi=x(1:n);
        g(1:n)=(exp(2*xi)-1)./(exp(2*xi)+1);
        g=g';

    case 60   %20   Diagonal 5 function
        n=length(x);
        xi=x(1:n);
        g(1:n)=(exp(2*xi)-1)./(exp(2*xi)+1);
        g=g';

    case 61   %20   Diagonal 5 function
        n=length(x);
        xi=x(1:n);
        g(1:n)=(exp(2*xi)-1)./(exp(2*xi)+1);
        g=g';

    case 62   %20   Diagonal 5 function
        n=length(x);
        xi=x(1:n);
        g(1:n)=(exp(2*xi)-1)./(exp(2*xi)+1);
        g=g';

    case 63              % 21  Extended Himmelblau function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        ga=2*(a.^2+b-11).*(2*a)+2*(a+b.^2-7)*1;
        gb=2*(a.^2+b-11)*1+4*(a+b.^2-7).*(b);
        g(1:2:n-1)=ga;
        g(2:2:n)=gb;
        g=g';

    case 64              % 21  Extended Himmelblau function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        ga=2*(a.^2+b-11).*(2*a)+2*(a+b.^2-7)*1;
        gb=2*(a.^2+b-11)*1+4*(a+b.^2-7).*(b);
        g(1:2:n-1)=ga;
        g(2:2:n)=gb;
        g=g';

    case 65  % 22 Generalized White&Holst function
        n=length(x);
        a=x(1:n-1);
        b=x(2:n);
        c=100;
        a1=(-6*c*a.^2).*(b-a.^3)-2*(1-a);
        b1=2*c*(b-a.^3);
        d =[ a1;0];
        e = [0;b1];
        g = d + e;

    case 66  % 22 Generalized White&Holst function
        n=length(x);
        a=x(1:n-1);
        b=x(2:n);
        c=100;
        a1=(-6*c*a.^2).*(b-a.^3)-2*(1-a);
        b1=2*c*(b-a.^3);
        d =[ a1;0];
        e = [0;b1];
        g = d + e;

    case 67   %  23  Generalized PSC1 function
        n=length(x);
        a=x(1:n-1);
        b=x(2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b);
        dd=2*c.*(a+2*b);
        e=[d;0];
        ee=[0;dd];
        g=e+ee;

    case 68   %  23  Generalized PSC1 function
        n=length(x);
        a=x(1:n-1);
        b=x(2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b);
        dd=2*c.*(a+2*b);
        e=[d;0];
        ee=[0;dd];
        g=e+ee;

    case 69   %  23  Generalized PSC1 function
        n=length(x);
        a=x(1:n-1);
        b=x(2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b);
        dd=2*c.*(a+2*b);
        e=[d;0];
        ee=[0;dd];
        g=e+ee;

    case 70   %  23  Generalized PSC1 function
        n=length(x);
        a=x(1:n-1);
        b=x(2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b);
        dd=2*c.*(a+2*b);
        e=[d;0];
        ee=[0;dd];
        g=e+ee;

    case 71   %  23  Generalized PSC1 function
        n=length(x);
        a=x(1:n-1);
        b=x(2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b);
        dd=2*c.*(a+2*b);
        e=[d;0];
        ee=[0;dd];
        g=e+ee;

    case 72   %  24   Extended PSC1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b)+sin(2*a);
        dd=2*c.*(2*b+a)-sin(2*b);
        g(1:2:n-1)=d;
        g(2:2:n)=dd;
        g=g';

    case 73   %  24   Extended PSC1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b)+sin(2*a);
        dd=2*c.*(2*b+a)-sin(2*b);
        g(1:2:n-1)=d;
        g(2:2:n)=dd;
        g=g';

    case 74   %  24   Extended PSC1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b)+sin(2*a);
        dd=2*c.*(2*b+a)-sin(2*b);
        g(1:2:n-1)=d;
        g(2:2:n)=dd;
        g=g';

    case 75   %  24   Extended PSC1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b)+sin(2*a);
        dd=2*c.*(2*b+a)-sin(2*b);
        g(1:2:n-1)=d;
        g(2:2:n)=dd;
        g=g';

    case 76   %  24   Extended PSC1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=a.^2+b.^2+a.*b;
        d=2*c.*(2*a+b)+sin(2*a);
        dd=2*c.*(2*b+a)-sin(2*b);
        g(1:2:n-1)=d;
        g(2:2:n)=dd;
        g=g';

    case 77    % 31 Perturbed quadratic diagonal function
        n=length(x);
        g1=0;
        b=x(1:n);
        for i=1:n
            a=x(i);
            g1=g1+a;
        end
        g2=0.02*b;
        g=2*g1+g2;

    case 78    % 31 Perturbed quadratic diagonal function
        n=length(x);
        g1=0;
        b=x(1:n);
        for i=1:n
            a=x(i);
            g1=g1+a;
        end
        g2=0.02*b;
        g=2*g1+g2;

    case 79    % 31 Perturbed quadratic diagonal function
        n=length(x);
        g1=0;
        b=x(1:n);
        for i=1:n
            a=x(i);
            g1=g1+a;
        end
        g2=0.02*b;
        g=2*g1+g2;

    case 80    % 31 Perturbed quadratic diagonal function
        n=length(x);
        g1=0;
        b=x(1:n);
        for i=1:n
            a=x(i);
            g1=g1+a;
        end
        g2=0.02*b;
        g=2*g1+g2;

    case 81    % 31 Perturbed quadratic diagonal function
        n=length(x);
        g1=0;
        b=x(1:n);
        for i=1:n
            a=x(i);
            g1=g1+a;
        end
        g2=0.02*b;
        g=2*g1+g2;

    case 82   % 33 Extended Hiebert function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        h=2*(a-10)+2*(a.*b-50000).*b;
        d=2*(a.*b-50000).*a;
        g(1:2:n-1)=h;
        g(2:2:n)=d;
        g=g';

    case 83   % 33 Extended Hiebert function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        h=2*(a-10)+2*(a.*b-50000).*b;
        d=2*(a.*b-50000).*a;
        g(1:2:n-1)=h;
        g(2:2:n)=d;
        g=g';

    case 84   % 33 Extended Hiebert function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        h=2*(a-10)+2*(a.*b-50000).*b;
        d=2*(a.*b-50000).*a;
        g(1:2:n-1)=h;
        g(2:2:n)=d;
        g=g';

    case 85   % 33 Extended Hiebert function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        h=2*(a-10)+2*(a.*b-50000).*b;
        d=2*(a.*b-50000).*a;
        g(1:2:n-1)=h;
        g(2:2:n)=d;
        g=g';

    case 86   % 33 Extended Hiebert function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        h=2*(a-10)+2*(a.*b-50000).*b;
        d=2*(a.*b-50000).*a;
        g(1:2:n-1)=h;
        g(2:2:n)=d;
        g=g';

    case 87      %  35  Extended quadratic penalty QP1 function
        n=length(x);
        f2=0;a=x(1:n);b=x(1:n-1);
        for i=1:n
            b1=x(i)^2;
            f2=f2+b1;
        end
        c=4*b.*(b.^2-2);
        d=4*a*(f2-0.5);
        dd=[c;0];
        g=d+dd;

    case 88      %  35  Extended quadratic penalty QP1 function
        n=length(x);
        f2=0;a=x(1:n);b=x(1:n-1);
        for i=1:n
            b1=x(i)^2;
            f2=f2+b1;
        end
        c=4*b.*(b.^2-2);
        d=4*a*(f2-0.5);
        dd=[c;0];
        g=d+dd;

    case 89      %  35  Extended quadratic penalty QP1 function
        n=length(x);
        f2=0;a=x(1:n);b=x(1:n-1);
        for i=1:n
            b1=x(i)^2;
            f2=f2+b1;
        end
        c=4*b.*(b.^2-2);
        d=4*a*(f2-0.5);
        dd=[c;0];
        g=d+dd;

    case 90      %  35  Extended quadratic penalty QP1 function
        n=length(x);
        f2=0;a=x(1:n);b=x(1:n-1);
        for i=1:n
            b1=x(i)^2;
            f2=f2+b1;
        end
        c=4*b.*(b.^2-2);
        d=4*a*(f2-0.5);
        dd=[c;0];
        g=d+dd;

    case 91      %  35  Extended quadratic penalty QP1 function
        n=length(x);
        f2=0;a=x(1:n);b=x(1:n-1);
        for i=1:n
            b1=x(i)^2;
            f2=f2+b1;
        end
        c=4*b.*(b.^2-2);
        d=4*a*(f2-0.5);
        dd=[c;0];
        g=d+dd;

    case 92  %  38 Extended quadratic exponential EP1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(exp(a-b)-5).*exp(a-b)+2*(a-b).*(a-b-11).^2+2*(a-b).^2.*(a-b-11);
        d=-2*(exp(a-b)-5).*exp(a-b)-2*(a-b).*(a-b-11).^2-2*(a-b).^2.*(a-b-11);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 93  %  38 Extended quadratic exponential EP1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(exp(a-b)-5).*exp(a-b)+2*(a-b).*(a-b-11).^2+2*(a-b).^2.*(a-b-11);
        d=-2*(exp(a-b)-5).*exp(a-b)-2*(a-b).*(a-b-11).^2-2*(a-b).^2.*(a-b-11);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 94  %  38 Extended quadratic exponential EP1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(exp(a-b)-5).*exp(a-b)+2*(a-b).*(a-b-11).^2+2*(a-b).^2.*(a-b-11);
        d=-2*(exp(a-b)-5).*exp(a-b)-2*(a-b).*(a-b-11).^2-2*(a-b).^2.*(a-b-11);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 95  %  38 Extended quadratic exponential EP1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(exp(a-b)-5).*exp(a-b)+2*(a-b).*(a-b-11).^2+2*(a-b).^2.*(a-b-11);
        d=-2*(exp(a-b)-5).*exp(a-b)-2*(a-b).*(a-b-11).^2-2*(a-b).^2.*(a-b-11);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 96  %  38 Extended quadratic exponential EP1 function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(exp(a-b)-5).*exp(a-b)+2*(a-b).*(a-b-11).^2+2*(a-b).^2.*(a-b-11);
        d=-2*(exp(a-b)-5).*exp(a-b)-2*(a-b).*(a-b-11).^2-2*(a-b).^2.*(a-b-11);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 97       %  39  Extended Tridiagonal 2 function
        n=length(x);
        g = zeros(n,1);
        c=0.1;
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i)+2*(a*b-1)*b+c*(b+1);
            g(i+1,1)=g(i+1)+2*(a*b-1)*a+c*(a+1);
        end

    case 98       %  39  Extended Tridiagonal 2 function
        n=length(x);
        g = zeros(n,1);
        c=0.1;
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i)+2*(a*b-1)*b+c*(b+1);
            g(i+1,1)=g(i+1)+2*(a*b-1)*a+c*(a+1);
        end

    case 99       %  39  Extended Tridiagonal 2 function
        n=length(x);
        g = zeros(n,1);
        c=0.1;
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i)+2*(a*b-1)*b+c*(b+1);
            g(i+1,1)=g(i+1)+2*(a*b-1)*a+c*(a+1);
        end

    case 100       %  39  Extended Tridiagonal 2 function
        n=length(x);
        g = zeros(n,1);
        c=0.1;
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i)+2*(a*b-1)*b+c*(b+1);
            g(i+1,1)=g(i+1)+2*(a*b-1)*a+c*(a+1);
        end

    case 101       %  39  Extended Tridiagonal 2 function
        n=length(x);
        g = zeros(n,1);
        c=0.1;
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i)+2*(a*b-1)*b+c*(b+1);
            g(i+1,1)=g(i+1)+2*(a*b-1)*a+c*(a+1);
        end

    case 102         %40   FLETCBV3 function
        n=length(x);
        p=1e-8;
        h=1/(n+1);
        c=1;
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+p*(a-b);
            g(i+1,1)=g(i+1,1)-p*(a-b);
        end
        for i=1:n
            g(i,1)=g(i,1)+(-p*(h^2+2)/h^2+(c*p/h^2)*sin(x(i)));
        end
        g(1,1)=g(1,1)+0.5*p*(2*x(1));
        g(n,1)=g(n,1)+p*(x(n));

    case 103         %40   FLETCBV3 function
        n=length(x);
        p=1e-8;
        h=1/(n+1);
        c=1;
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+p*(a-b);
            g(i+1,1)=g(i+1,1)-p*(a-b);
        end
        for i=1:n
            g(i,1)=g(i,1)+(-p*(h^2+2)/h^2+(c*p/h^2)*sin(x(i)));
        end
        g(1,1)=g(1,1)+0.5*p*(2*x(1));
        g(n,1)=g(n,1)+p*(x(n));

    case 104         %40   FLETCBV3 function
        n=length(x);
        p=1e-8;
        h=1/(n+1);
        c=1;
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+p*(a-b);
            g(i+1,1)=g(i+1,1)-p*(a-b);
        end
        for i=1:n
            g(i,1)=g(i,1)+(-p*(h^2+2)/h^2+(c*p/h^2)*sin(x(i)));
        end
        g(1,1)=g(1,1)+0.5*p*(2*x(1));
        g(n,1)=g(n,1)+p*(x(n));

    case 105         %40   FLETCBV3 function
        n=length(x);
        p=1e-8;
        h=1/(n+1);
        c=1;
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+p*(a-b);
            g(i+1,1)=g(i+1,1)-p*(a-b);
        end
        for i=1:n
            g(i,1)=g(i,1)+(-p*(h^2+2)/h^2+(c*p/h^2)*sin(x(i)));
        end
        g(1,1)=g(1,1)+0.5*p*(2*x(1));
        g(n,1)=g(n,1)+p*(x(n));

    case 106         %40   FLETCBV3 function
        n=length(x);
        p=1e-8;
        h=1/(n+1);
        c=1;
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+p*(a-b);
            g(i+1,1)=g(i+1,1)-p*(a-b);
        end
        for i=1:n
            g(i,1)=g(i,1)+(-p*(h^2+2)/h^2+(c*p/h^2)*sin(x(i)));
        end
        g(1,1)=g(1,1)+0.5*p*(2*x(1));
        g(n,1)=g(n,1)+p*(x(n));

    case 107    %42   BDQRTIC function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-4
            a=x(i);
            b=x(i+1);
            c=x(i+2);
            d=x(i+3);
            g(i,1)=g(i,1)+2*(-4*a+3)*(-4)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*2*a;
            g(i+1,1)=g(i+1,1)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*4*b;
            g(i+2,1)=g(i+2,1)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*6*c;
            g(i+3,1)=g(i+3,1)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*8*d;
            g(n,1)=g(n,1)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*10*x(n);
        end

    case 108    %42   BDQRTIC function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-4
            a=x(i);
            b=x(i+1);
            c=x(i+2);
            d=x(i+3);
            g(i,1)=g(i,1)+2*(-4*a+3)*(-4)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*2*a;
            g(i+1,1)=g(i+1,1)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*4*b;
            g(i+2,1)=g(i+2,1)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*6*c;
            g(i+3,1)=g(i+3,1)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*8*d;
            g(n,1)=g(n,1)+2*(a^2+2*b^2+3*c^2+4*d^2+5*x(n)^2)*10*x(n);
        end

    case 109      %  43  TRIDIA function(CUTE)
        n=length(x);
        alpha=2;beta=1;gama=1;sigma=1;
        b=x(2:n);
        a=x(1:n-1);
        c=(2:n);
        d=2*alpha*c'.*(alpha*b-beta*a);
        dd=2*beta*c'.*(alpha*b-beta*a);
        e=[2*gama*sigma*(sigma*x(1)-1);d];
        ee=[dd;0];
        g=e-ee;

    case 110      %  43  TRIDIA function(CUTE)
        n=length(x);
        alpha=2;beta=1;gama=1;sigma=1;
        b=x(2:n);
        a=x(1:n-1);
        c=(2:n);
        d=2*alpha*c'.*(alpha*b-beta*a);
        dd=2*beta*c'.*(alpha*b-beta*a);
        e=[2*gama*sigma*(sigma*x(1)-1);d];
        ee=[dd;0];
        g=e-ee;

    case 111     %  43  TRIDIA function(CUTE)
        n=length(x);
        alpha=2;beta=1;gama=1;sigma=1;
        b=x(2:n);
        a=x(1:n-1);
        c=(2:n);
        d=2*alpha*c'.*(alpha*b-beta*a);
        dd=2*beta*c'.*(alpha*b-beta*a);
        e=[2*gama*sigma*(sigma*x(1)-1);d];
        ee=[dd;0];
        g=e-ee;

    case 112             %44 ARGLINB function
        n=length(x);
        m=n;
        g = zeros(n,1);
        f=0;
        for i=1:m
            b=0;
            for j=1:n
                a=i*j*x(j);
                b=b+a;
            end
            c=2*i*(b-1);
            f=c+f;
        end
        for i=1:n
        g(i,1)=f*i;
        end

    case 113             %44 ARGLINB function
        n=length(x);
        m=n;
        g = zeros(n,1);
        f=0;
        for i=1:m
            b=0;
            for j=1:n
                a=i*j*x(j);
                b=b+a;
            end
            c=2*i*(b-1);
            f=c+f;
        end
        for i=1:n
        g(i,1)=f*i;
        end

    case 114             %44 ARGLINB function
        n=length(x);
        m=n;
        g = zeros(n,1);
        f=0;
        for i=1:m
            b=0;
            for j=1:n
                a=i*j*x(j);
                b=b+a;
            end
            c=2*i*(b-1);
            f=c+f;
        end
        for i=1:n
        g(i,1)=f*i;
        end

    case 115             %44 ARGLINB function
        n=length(x);
        m=n;
        g = zeros(n,1);
        f=0;
        for i=1:m
            b=0;
            for j=1:n
                a=i*j*x(j);
                b=b+a;
            end
            c=2*i*(b-1);
            f=c+f;
        end
        for i=1:n
        g(i,1)=f*i;
        end

    case 116   % 48 DQDRTIC function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        h=x(3:n);
        c=100;
        d=100;
        a1 = 2*a;
        b1 = 2*c*b;
        h1=2*d*h;
        dd = [a1;0;0];
        ee = [0;b1;0];
        hh=[0;0;h1];
        g = dd + ee+hh;

    case 117   % 48 DQDRTIC function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        h=x(3:n);
        c=100;
        d=100;
        a1 = 2*a;
        b1 = 2*c*b;
        h1=2*d*h;
        dd = [a1;0;0];
        ee = [0;b1;0];
        hh=[0;0;h1];
        g = dd + ee+hh;

    case 118   % 48 DQDRTIC function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        h=x(3:n);
        c=100;
        d=100;
        a1 = 2*a;
        b1 = 2*c*b;
        h1=2*d*h;
        dd = [a1;0;0];
        ee = [0;b1;0];
        hh=[0;0;h1];
        g = dd + ee+hh;

    case 119   % 48 DQDRTIC function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        h=x(3:n);
        c=100;
        d=100;
        a1 = 2*a;
        b1 = 2*c*b;
        h1=2*d*h;
        dd = [a1;0;0];
        ee = [0;b1;0];
        hh=[0;0;h1];
        g = dd + ee+hh;

    case 120   % 48 DQDRTIC function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        h=x(3:n);
        c=100;
        d=100;
        a1 = 2*a;
        b1 = 2*c*b;
        h1=2*d*h;
        dd = [a1;0;0];
        ee = [0;b1;0];
        hh=[0;0;h1];
        g = dd + ee+hh;

    case 121         %50   CURLY20 function
        n=length(x);
        k=20;
        g=zeros(n,1);
        
        for i=1:n
            if(i<=n-k)
                q=sum(x(i:1:i+k));
                temp(i)=q;
            else
                q=sum(x(i:1:n));
                temp(i)=q;
            end
        end
        j=1;
        flag=1;
        for i=1:n
            
            if(i<=n-k)
                if(j<=i)
                    a=temp(j);
                    g(i,1)=g(i,1)+4*a^3-40*a-0.1;
                    j=j+1;
                end
            else
                if(flag==1)
                    index=i-k;
                    flag=0;
                end
                a=temp(index);
                g(i,1)=g(i,1)+4*a^3-40*a-0.1;
                index=index+1;
            end
        end

    case 122         %50   CURLY20 function
        n=length(x);
        k=20;
        g=zeros(n,1);
        
        for i=1:n
            if(i<=n-k)
                q=sum(x(i:1:i+k));
                temp(i)=q;
            else
                q=sum(x(i:1:n));
                temp(i)=q;
            end
        end
        j=1;
        flag=1;
        for i=1:n
            
            if(i<=n-k)
                if(j<=i)
                    a=temp(j);
                    g(i,1)=g(i,1)+4*a^3-40*a-0.1;
                    j=j+1;
                end
            else
                if(flag==1)
                    index=i-k;
                    flag=0;
                end
                a=temp(index);
                g(i,1)=g(i,1)+4*a^3-40*a-0.1;
                index=index+1;
            end
        end

    case 123         %50   CURLY20 function
        n=length(x);
        k=20;
        g=zeros(n,1);
        
        for i=1:n
            if(i<=n-k)
                q=sum(x(i:1:i+k));
                temp(i)=q;
            else
                q=sum(x(i:1:n));
                temp(i)=q;
            end
        end
        j=1;
        flag=1;
        for i=1:n
            
            if(i<=n-k)
                if(j<=i)
                    a=temp(j);
                    g(i,1)=g(i,1)+4*a^3-40*a-0.1;
                    j=j+1;
                end
            else
                if(flag==1)
                    index=i-k;
                    flag=0;
                end
                a=temp(index);
                g(i,1)=g(i,1)+4*a^3-40*a-0.1;
                index=index+1;
            end
        end

    case 124         %50   CURLY20 function
        n=length(x);
        k=20;
        g=zeros(n,1);
        
        for i=1:n
            if(i<=n-k)
                q=sum(x(i:1:i+k));
                temp(i)=q;
            else
                q=sum(x(i:1:n));
                temp(i)=q;
            end
        end
        j=1;
        flag=1;
        for i=1:n
            
            if(i<=n-k)
                if(j<=i)
                    a=temp(j);
                    g(i,1)=g(i,1)+4*a^3-40*a-0.1;
                    j=j+1;
                end
            else
                if(flag==1)
                    index=i-k;
                    flag=0;
                end
                a=temp(index);
                g(i,1)=g(i,1)+4*a^3-40*a-0.1;
                index=index+1;
            end
        end

    case 125  %107  Dixon-Price Function  (源代码没有51，将107放到51)
        n=length(x);
        g=zeros(n,1);
        g(1)=-8*x(2)^2+6*x(1)-2;
        for i=2:n-1
            g(i)=-(4*i+4)*x(i+1)^2+(2*i+2)*x(i)-8*i*x(i)*(x(i-1)-2*x(i)^2);
        end
        g(n)=-(8*n)*x(n)*(-2*x(n)^2+x(n-1));

    case 126  %107  Dixon-Price Function  (源代码没有51，将107放到51)
        n=length(x);
        g=zeros(n,1);
        g(1)=-8*x(2)^2+6*x(1)-2;
        for i=2:n-1
            g(i)=-(4*i+4)*x(i+1)^2+(2*i+2)*x(i)-8*i*x(i)*(x(i-1)-2*x(i)^2);
        end
        g(n)=-(8*n)*x(n)*(-2*x(n)^2+x(n-1));

    case 127  %107  Dixon-Price Function  (源代码没有51，将107放到51)
        n=length(x);
        g=zeros(n,1);
        g(1)=-8*x(2)^2+6*x(1)-2;
        for i=2:n-1
            g(i)=-(4*i+4)*x(i+1)^2+(2*i+2)*x(i)-8*i*x(i)*(x(i-1)-2*x(i)^2);
        end
        g(n)=-(8*n)*x(n)*(-2*x(n)^2+x(n-1));

    case 128  %107  Dixon-Price Function  (源代码没有51，将107放到51)
        n=length(x);
        g=zeros(n,1);
        g(1)=-8*x(2)^2+6*x(1)-2;
        for i=2:n-1
            g(i)=-(4*i+4)*x(i+1)^2+(2*i+2)*x(i)-8*i*x(i)*(x(i-1)-2*x(i)^2);
        end
        g(n)=-(8*n)*x(n)*(-2*x(n)^2+x(n-1));

    case 129  %55   Perturbed Tridiagonal Quadratic function
        n=length(x);
        g=zeros(n,1);
        for i=2:n-1
            g(i:1)=g(i:1)+2*i*x(i)+2*(x(i-1)+x(i)+x(i+1));
            g(i-1:1)=g(i-1:1)+2*(x(i-1)+x(i)+x(i+1));
            g(i+1:1)=g(i+1:1)+2*(x(i-1)+x(i)+x(i+1));
        end
        g(1,1)=g(1,1)+2*x(1);

    case 130  %55   Perturbed Tridiagonal Quadratic function
        n=length(x);
        g=zeros(n,1);
        for i=2:n-1
            g(i:1)=g(i:1)+2*i*x(i)+2*(x(i-1)+x(i)+x(i+1));
            g(i-1:1)=g(i-1:1)+2*(x(i-1)+x(i)+x(i+1));
            g(i+1:1)=g(i+1:1)+2*(x(i-1)+x(i)+x(i+1));
        end
        g(1,1)=g(1,1)+2*x(1);

    case 131  %55   Perturbed Tridiagonal Quadratic function
        n=length(x);
        g=zeros(n,1);
        for i=2:n-1
            g(i:1)=g(i:1)+2*i*x(i)+2*(x(i-1)+x(i)+x(i+1));
            g(i-1:1)=g(i-1:1)+2*(x(i-1)+x(i)+x(i+1));
            g(i+1:1)=g(i+1:1)+2*(x(i-1)+x(i)+x(i+1));
        end
        g(1,1)=g(1,1)+2*x(1);

    case 132  %55   Perturbed Tridiagonal Quadratic function
        n=length(x);
        g=zeros(n,1);
        for i=2:n-1
            g(i:1)=g(i:1)+2*i*x(i)+2*(x(i-1)+x(i)+x(i+1));
            g(i-1:1)=g(i-1:1)+2*(x(i-1)+x(i)+x(i+1));
            g(i+1:1)=g(i+1:1)+2*(x(i-1)+x(i)+x(i+1));
        end
        g(1,1)=g(1,1)+2*x(1);

    case 133   %  59  POWER function(CUTE)
        n=length(x);
        % 或者        a=x(1:n);
        % 或者        b=(1:n);
        % 或者        g=2*b'.^2.*a;
        g=zeros(n,1);
        for i=1:n
            g(i)=g(i)+2*i^2*x(i);
        end

    case 134   %  59  POWER function(CUTE)
        n=length(x);
        % 或者        a=x(1:n);
        % 或者        b=(1:n);
        % 或者        g=2*b'.^2.*a;
        g=zeros(n,1);
        for i=1:n
            g(i)=g(i)+2*i^2*x(i);
        end

    case 135   %  59  POWER function(CUTE)
        n=length(x);
        % 或者        a=x(1:n);
        % 或者        b=(1:n);
        % 或者        g=2*b'.^2.*a;
        g=zeros(n,1);
        for i=1:n
            g(i)=g(i)+2*i^2*x(i);
        end

    case 136   %62  EDENSCH function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+4*(a-2)^3+2*(a*b-2*b)*b;
            g(i+1,1)=g(i+1,1)+2*(a*b-2*b)*(a-2)+2*(b+1);
        end

    case 137   %62  EDENSCH function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+4*(a-2)^3+2*(a*b-2*b)*b;
            g(i+1,1)=g(i+1,1)+2*(a*b-2*b)*(a-2)+2*(b+1);
        end

    case 138   %62  EDENSCH function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+4*(a-2)^3+2*(a*b-2*b)*b;
            g(i+1,1)=g(i+1,1)+2*(a*b-2*b)*(a-2)+2*(b+1);
        end

    case 139   %62  EDENSCH function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+4*(a-2)^3+2*(a*b-2*b)*b;
            g(i+1,1)=g(i+1,1)+2*(a*b-2*b)*(a-2)+2*(b+1);
        end

    case 140   %62  EDENSCH function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+4*(a-2)^3+2*(a*b-2*b)*b;
            g(i+1,1)=g(i+1,1)+2*(a*b-2*b)*(a-2)+2*(b+1);
        end

    case 141     % 68 BDEXP function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        c=x(3:n);
        a1=a+b;
        a2=exp(-c.*a1);
        d=-(a1.^2).*a2;
        e=a2-a1.*a2.*c;
        d1=[0;0;d];
        e1=[0;e;0];
        e2=[e;0;0];
        g=d1+e1+e2;

    case 142     % 68 BDEXP function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        c=x(3:n);
        a1=a+b;
        a2=exp(-c.*a1);
        d=-(a1.^2).*a2;
        e=a2-a1.*a2.*c;
        d1=[0;0;d];
        e1=[0;e;0];
        e2=[e;0;0];
        g=d1+e1+e2;
                
    case 143     % 68 BDEXP function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        c=x(3:n);
        a1=a+b;
        a2=exp(-c.*a1);
        d=-(a1.^2).*a2;
        e=a2-a1.*a2.*c;
        d1=[0;0;d];
        e1=[0;e;0];
        e2=[e;0;0];
        g=d1+e1+e2;

    case 144     % 68 BDEXP function(CUTE)
        n=length(x);
        a=x(1:n-2);
        b=x(2:n-1);
        c=x(3:n);
        a1=a+b;
        a2=exp(-c.*a1);
        d=-(a1.^2).*a2;
        e=a2-a1.*a2.*c;
        d1=[0;0;d];
        e1=[0;e;0];
        e2=[e;0;0];
        g=d1+e1+e2;

    case 145   %  73  VARDIM function(CUTE)
          n=length(x);
          g=zeros(n,1);
          g1=0;
          for i=1:n
              b=i*x(i);
              g1=g1+b;
          end
          gg=g1-n*(n+1)/2;
          for i=1:n
              a=x(i);
              g(i,1)=2*(a-1)+2*gg*i+4*i*gg^3;
          end

    case 146   %  73  VARDIM function(CUTE)
          n=length(x);
          g=zeros(n,1);
          g1=0;
          for i=1:n
              b=i*x(i);
              g1=g1+b;
          end
          gg=g1-n*(n+1)/2;
          for i=1:n
              a=x(i);
              g(i,1)=2*(a-1)+2*gg*i+4*i*gg^3;
          end

    case 147   %  73  VARDIM function(CUTE)
          n=length(x);
          g=zeros(n,1);
          g1=0;
          for i=1:n
              b=i*x(i);
              g1=g1+b;
          end
          gg=g1-n*(n+1)/2;
          for i=1:n
              a=x(i);
              g(i,1)=2*(a-1)+2*gg*i+4*i*gg^3;
          end

    case 148   %  73  VARDIM function(CUTE)
          n=length(x);
          g=zeros(n,1);
          g1=0;
          for i=1:n
              b=i*x(i);
              g1=g1+b;
          end
          gg=g1-n*(n+1)/2;
          for i=1:n
              a=x(i);
              g(i,1)=2*(a-1)+2*gg*i+4*i*gg^3;
          end

    case 149    %  74  QUARTC function(CUTE)
        n=length(x);
        a=x(1:n);
        g=4*(a-1).^3;

    case 150   %  74  QUARTC function(CUTE)
        n=length(x);
        a=x(1:n);
        g=4*(a-1).^3;

    case 151   %  74  QUARTC function(CUTE)
        n=length(x);
        a=x(1:n);
        g=4*(a-1).^3;

    case 152    %  74  QUARTC function(CUTE)
        n=length(x);
        a=x(1:n);
        g=4*(a-1).^3;

    case 153    %  74  QUARTC function(CUTE)
        n=length(x);
        a=x(1:n);
        g=4*(a-1).^3;

    case 154  % 77 Extended DENSCHNB function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a-2)+2*(a-2).*(b.^2);
        d=2*b.*(a-2).^2+2*(b+1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 155  % 77 Extended DENSCHNB function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a-2)+2*(a-2).*(b.^2);
        d=2*b.*(a-2).^2+2*(b+1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 156  % 77 Extended DENSCHNB function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a-2)+2*(a-2).*(b.^2);
        d=2*b.*(a-2).^2+2*(b+1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 157  % 77 Extended DENSCHNB function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a-2)+2*(a-2).*(b.^2);
        d=2*b.*(a-2).^2+2*(b+1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 158  % 77 Extended DENSCHNB function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a-2)+2*(a-2).*(b.^2);
        d=2*b.*(a-2).^2+2*(b+1);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 159   % 78  Extended DENSCHNF function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(2*(a+b).^2+(a-b).^2-8).*(6*a+2*b)+2*(5*a.^2+(b-3).^2-9).*(10*a);
        d=2*(2*(a+b).^2+(a-b).^2-8).*(2*a+5*b)+4*(5*a.^2+(b-3).^2-9).*(b-3);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 160   % 78  Extended DENSCHNF function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(2*(a+b).^2+(a-b).^2-8).*(6*a+2*b)+2*(5*a.^2+(b-3).^2-9).*(10*a);
        d=2*(2*(a+b).^2+(a-b).^2-8).*(2*a+5*b)+4*(5*a.^2+(b-3).^2-9).*(b-3);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 161   % 78  Extended DENSCHNF function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(2*(a+b).^2+(a-b).^2-8).*(6*a+2*b)+2*(5*a.^2+(b-3).^2-9).*(10*a);
        d=2*(2*(a+b).^2+(a-b).^2-8).*(2*a+5*b)+4*(5*a.^2+(b-3).^2-9).*(b-3);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 162     %  81 COSINE function(CUTE)
        n=length(x);
        a=x(2:n);
        b=x(1:n-1);
        c=0.5*sin(-0.5*a+b.^2);
        d=-2*b.*sin(-0.5*a+b.^2);
        e=[0;c];
        ee=[d;0];
        g=e+ee;

    case 163     %  81 COSINE function(CUTE)
        n=length(x);
        a=x(2:n);
        b=x(1:n-1);
        c=0.5*sin(-0.5*a+b.^2);
        d=-2*b.*sin(-0.5*a+b.^2);
        e=[0;c];
        ee=[d;0];
        g=e+ee;

    case 164     %  81 COSINE function(CUTE)
        n=length(x);
        a=x(2:n);
        b=x(1:n-1);
        c=0.5*sin(-0.5*a+b.^2);
        d=-2*b.*sin(-0.5*a+b.^2);
        e=[0;c];
        ee=[d;0];
        g=e+ee;

    case 165     %  81 COSINE function(CUTE)
        n=length(x);
        a=x(2:n);
        b=x(1:n-1);
        c=0.5*sin(-0.5*a+b.^2);
        d=-2*b.*sin(-0.5*a+b.^2);
        e=[0;c];
        ee=[d;0];
        g=e+ee;

    case 166     %  81 COSINE function(CUTE)
        n=length(x);
        a=x(2:n);
        b=x(1:n-1);
        c=0.5*sin(-0.5*a+b.^2);
        d=-2*b.*sin(-0.5*a+b.^2);
        e=[0;c];
        ee=[d;0];
        g=e+ee;

    case 167     %  84  Generalized Quartic function
        n = length(x);
        b = x(1:n-1);
        a = 2 * b + 4*( x(2:n)+b.^2 ).*b;
        c = 2 * (x(2:n) + b.^2);
        d = [a;0];
        e = [0;c];
        g = d + e;

    case 168     %  84  Generalized Quartic function
        n = length(x);
        b = x(1:n-1);
        a = 2 * b + 4*( x(2:n)+b.^2 ).*b;
        c = 2 * (x(2:n) + b.^2);
        d = [a;0];
        e = [0;c];
        g = d + e;

    case 169     %  84  Generalized Quartic function
        n = length(x);
        b = x(1:n-1);
        a = 2 * b + 4*( x(2:n)+b.^2 ).*b;
        c = 2 * (x(2:n) + b.^2);
        d = [a;0];
        e = [0;c];
        g = d + e;

    case 170     %  84  Generalized Quartic function
        n = length(x);
        b = x(1:n-1);
        a = 2 * b + 4*( x(2:n)+b.^2 ).*b;
        c = 2 * (x(2:n) + b.^2);
        d = [a;0];
        e = [0;c];
        g = d + e;

    case 171     %  84  Generalized Quartic function
        n = length(x);
        b = x(1:n-1);
        a = 2 * b + 4*( x(2:n)+b.^2 ).*b;
        c = 2 * (x(2:n) + b.^2);
        d = [a;0];
        e = [0;c];
        g = d + e;

    case 172    %  85  Diagonal 7 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-2-2*a;

    case 173    %  85  Diagonal 7 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-2-2*a;

    case 174    %  85  Diagonal 7 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-2-2*a;

    case 175    %  85  Diagonal 7 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-2-2*a;

    case 176    %  85  Diagonal 7 function
        n=length(x);
        a=x(1:n);
        g=exp(a)-2-2*a;

    case 177    %  86  Diagonal 8 function
        n=length(x);
        a=x(1:n);
        g=(a+1).*exp(a)-2-2*a;

    case 178    %  86  Diagonal 8 function
        n=length(x);
        a=x(1:n);
        g=(a+1).*exp(a)-2-2*a;

    case 179    %  86  Diagonal 8 function
        n=length(x);
        a=x(1:n);
        g=(a+1).*exp(a)-2-2*a;

    case 180    %  86  Diagonal 8 function
        n=length(x);
        a=x(1:n);
        g=(a+1).*exp(a)-2-2*a;

    case 181    %  86  Diagonal 8 function
        n=length(x);
        a=x(1:n);
        g=(a+1).*exp(a)-2-2*a;

    case 182     % 87 Full Hessian FH3 function
        n=length(x);
        a=x(1:n);
        g1=0;
        for i=1:n
            b=x(i);
            g1=g1+b;
        end
        g=(a+1).*exp(a)-2*a-2+2*g1;

    case 183     % 87 Full Hessian FH3 function
        n=length(x);
        a=x(1:n);
        g1=0;
        for i=1:n
            b=x(i);
            g1=g1+b;
        end
        g=(a+1).*exp(a)-2*a-2+2*g1;

    case 184     % 87 Full Hessian FH3 function
        n=length(x);
        a=x(1:n);
        g1=0;
        for i=1:n
            b=x(i);
            g1=g1+b;
        end
        g=(a+1).*exp(a)-2*a-2+2*g1;

    case 185     % 87 Full Hessian FH3 function
        n=length(x);
        a=x(1:n);
        g1=0;
        for i=1:n
            b=x(i);
            g1=g1+b;
        end
        g=(a+1).*exp(a)-2*a-2+2*g1;

    case 186     % 87 Full Hessian FH3 function
        n=length(x);
        a=x(1:n);
        g1=0;
        for i=1:n
            b=x(i);
            g1=g1+b;
        end
        g=(a+1).*exp(a)-2*a-2+2*g1;

    case 187      %  88 SINCOS function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a.^2+b.^2+a.*b).*(2*a+b)+sin(2*a);
        d=2*(a.^2+b.^2+a.*b).*(2*b+a)-sin(2*b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 188      %  88 SINCOS function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a.^2+b.^2+a.*b).*(2*a+b)+sin(2*a);
        d=2*(a.^2+b.^2+a.*b).*(2*b+a)-sin(2*b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 189      %  88 SINCOS function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a.^2+b.^2+a.*b).*(2*a+b)+sin(2*a);
        d=2*(a.^2+b.^2+a.*b).*(2*b+a)-sin(2*b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 190      %  88 SINCOS function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a.^2+b.^2+a.*b).*(2*a+b)+sin(2*a);
        d=2*(a.^2+b.^2+a.*b).*(2*b+a)-sin(2*b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 191      %  88 SINCOS function
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=2*(a.^2+b.^2+a.*b).*(2*a+b)+sin(2*a);
        d=2*(a.^2+b.^2+a.*b).*(2*b+a)-sin(2*b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 192        % 89 Diagonal 9 function
        n=length(x);
        a=(1:n-1);
        c=x(1:n-1);
        g1=exp(c)-a';
        b=20000*x(n);
        g=[g1;b];

    case 193   %  90 HIMMELBG function(CUTE)
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=4*a.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        d=6*b.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 194   %  90 HIMMELBG function(CUTE)
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=4*a.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        d=6*b.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 195   %  90 HIMMELBG function(CUTE)
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=4*a.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        d=6*b.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 196   %  90 HIMMELBG function(CUTE)
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=4*a.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        d=6*b.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 197   %  90 HIMMELBG function(CUTE)
        n=length(x);
        a=x(1:2:n-1);
        b=x(2:2:n);
        c=4*a.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        d=6*b.*exp(-a-b)-(2*a.^2+3*b.^2).*exp(-a-b);
        g(1:2:n-1)=c;
        g(2:2:n)=d;
        g=g';

    case 198  %Broyden banded function
        n=length(x);
        g=zeros(n,1);
        g(1)=15*x(1)^2-12*x(1)-4;
        for i=2:(n-5)
            g(i)=15*x(i)^2-14*x(i)-5;
        end
        g(n-4)=15*x(n-4)^2-12*x(n-4)-4;
        g(n-3)=15*x(n-3)^2-10*x(n-4)-3;
        g(n-2)=15*x(n-2)^2-8*x(n-2)-2;
        g(n-1)=15*x(n-1)^2-6*x(n-4)-1;
        g(n)=15*x(n)^2-4*x(n);

    case 199  %Broyden banded function
        n=length(x);
        g=zeros(n,1);
        g(1)=15*x(1)^2-12*x(1)-4;
        for i=2:(n-5)
            g(i)=15*x(i)^2-14*x(i)-5;
        end
        g(n-4)=15*x(n-4)^2-12*x(n-4)-4;
        g(n-3)=15*x(n-3)^2-10*x(n-4)-3;
        g(n-2)=15*x(n-2)^2-8*x(n-2)-2;
        g(n-1)=15*x(n-1)^2-6*x(n-4)-1;
        g(n)=15*x(n)^2-4*x(n);

    case 200
        %Csendes function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=6*x(i)^5*(sin(1/x(i))+2)-cos(1/x(i))*x(i)^4;
        end

    case 201
        %Csendes function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=6*x(i)^5*(sin(1/x(i))+2)-cos(1/x(i))*x(i)^4;
        end

    case 202
        %Csendes function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=6*x(i)^5*(sin(1/x(i))+2)-cos(1/x(i))*x(i)^4;
        end

    case 203
        %Csendes function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=6*x(i)^5*(sin(1/x(i))+2)-cos(1/x(i))*x(i)^4;
        end

    case 204
        %Csendes function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=6*x(i)^5*(sin(1/x(i))+2)-cos(1/x(i))*x(i)^4;
        end

    case 205
        %Sphere function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i);
        end

    case 206
        %Sphere function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i);
        end

    case 207
        %Sphere function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i);
        end

    case 208
        %Sphere function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i);
        end

    case 209
        %Sphere function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i);
        end

    case 210
        %Rastrigr function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)+20*pi*sin(2*pi*x(i));
        end

    case 211
        %Rastrigr function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)+20*pi*sin(2*pi*x(i));
        end

    case 212
        %Rastrigr function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)+20*pi*sin(2*pi*x(i));
        end

    case 213
        %Rastrigr function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)+20*pi*sin(2*pi*x(i));
        end

    case 214
        %Rastrigr function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)+20*pi*sin(2*pi*x(i));
        end

    case 215
        %Sum Squares Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*i*x(i);
        end

    case 216
        %Sum Squares Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*i*x(i);
        end

    case 217
        %Sum Squares Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*i*x(i);
        end

    case 218
        %Sum Squares Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*i*x(i);
        end

    case 219
        %Styblinski-Tang Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)^3-16*x(i)+5/2;
        end

    case 220
        %Styblinski-Tang Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)^3-16*x(i)+5/2;
        end

    case 221
        %Styblinski-Tang Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)^3-16*x(i)+5/2;
        end

    case 222
        %Styblinski-Tang Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)^3-16*x(i)+5/2;
        end

    case 223
        %Styblinski-Tang Function
        n=length(x);
        g=zeros(n,1);
        for i=1:n
            g(i)=2*x(i)^3-16*x(i)+5/2;
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%新增函数
        
    case 224    %65   EXPLIN1 function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+exp(0.1*a*b)*0.1*b;
            g(i+1,1)=g(i+1,1)+exp(0.1*a*b)*0.1*a;
        end
        
        for i=1:n
            g(i,1)=g(i,1)-10*i;
        end

    case 225    %65   EXPLIN1 function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+exp(0.1*a*b)*0.1*b;
            g(i+1,1)=g(i+1,1)+exp(0.1*a*b)*0.1*a;
        end
        
        for i=1:n
            g(i,1)=g(i,1)-10*i;
        end

    case 226    %65   EXPLIN1 function
        n=length(x);
        g=zeros(n,1);
        for i=1:n-1
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+exp(0.1*a*b)*0.1*b;
            g(i+1,1)=g(i+1,1)+exp(0.1*a*b)*0.1*a;
        end
        
        for i=1:n
            g(i,1)=g(i,1)-10*i;
        end

    case 227   %66 EXPLIN2 function
        n=length(x);
        g=zeros(n,1);
        m=n-1;
        for i=1:m
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+exp(i*a*b/(10*m))*(i*b/(10*m));
            g(i+1,1)=g(i+1,1)+exp(i*a*b/(10*m))*(i*a/(10*m));
        end
        
        for i=1:n
            g(i,1)=g(i,1)-10*i;
        end

    case 228   %66 EXPLIN2 function
        n=length(x);
        g=zeros(n,1);
        m=n-1;
        for i=1:m
            a=x(i);
            b=x(i+1);
            g(i,1)=g(i,1)+exp(i*a*b/(10*m))*(i*b/(10*m));
            g(i+1,1)=g(i+1,1)+exp(i*a*b/(10*m))*(i*a/(10*m));
        end
        
        for i=1:n
            g(i,1)=g(i,1)-10*i;
        end

    case 229  %  83  BIGGSB1 function(CUTE)
        n=length(x);
        a=x(1:n);
        b=x(2:n);
        c=x(1:n-1);
        g1=4*a;
        d=2*b;
        e=2*c;
        g2=[d;2];
        g3=[2;e];
        g=g1-g2-g3;

    case 230
        %Generalization of the Brown function 2
        n=length(x);
        g=zeros(n,1);
        g(1)=2*x(1)*(x(2)^2+1)*(x(1)^2)^(x(2)^2)+2*x(1)*log(x(2)^2)*(x(2)^2)^(x(1)^2+1);
        for i=2:(n-1)
            g(i)=2*x(i)*(x(i-1)^2+1)*(x(i)^2)^(x(i-1)^2)+2*x(i)*(x(i+1)^2+1)*...
                (x(i)^(2*x(i+1)^2))+2*x(i)*log(x(i-1)^2)*(x(i-1)^2)^(x(i)^2+1)...
                +2*x(i)*log(x(i+1)^2)*(x(i+1)^2)^(x(i)^2+1);
        end
        g(n)=2*x(n)*(x(n-1)^2+1)*(x(n)^(x(n-1)^2))+2*x(n)*log(x(n-1)^2)*(x(n-1)^2)^(x(n)^2+1);

    case 231
        %Generalization of the Brown function 2
        n=length(x);
        g=zeros(n,1);
        g(1)=2*x(1)*(x(2)^2+1)*(x(1)^2)^(x(2)^2)+2*x(1)*log(x(2)^2)*(x(2)^2)^(x(1)^2+1);
        for i=2:(n-1)
            g(i)=2*x(i)*(x(i-1)^2+1)*(x(i)^2)^(x(i-1)^2)+2*x(i)*(x(i+1)^2+1)*...
                (x(i)^(2*x(i+1)^2))+2*x(i)*log(x(i-1)^2)*(x(i-1)^2)^(x(i)^2+1)...
                +2*x(i)*log(x(i+1)^2)*(x(i+1)^2)^(x(i)^2+1);
        end
        g(n)=2*x(n)*(x(n-1)^2+1)*(x(n)^(x(n-1)^2))+2*x(n)*log(x(n-1)^2)*(x(n-1)^2)^(x(n)^2+1);

    case 232
        %Trid Function
        n=length(x);
        g=zeros(n,1);
        g(1)=2*x(1)-x(2)-2;
        for i=2:n-1
            g(i)=2*x(i)-x(i-1)-x(i+1)-2;
        end
        g(n)=2*x(n)-x(n-1)-2;

    case 233
        %Trid Function
        n=length(x);
        g=zeros(n,1);
        g(1)=2*x(1)-x(2)-2;
        for i=2:n-1
            g(i)=2*x(i)-x(i-1)-x(i+1)-2;
        end
        g(n)=2*x(n)-x(n-1)-2;
end
end