function x = xvalue(j)
if j == 1  %1
    n = 500;
    x = ones(n,1);
    x(1:2:end) = 0.5;
    x(2:2:end) = -2;

elseif j == 2  %1
    n = 2000;
    x = ones(n,1);
    x(1:2:end) = 0.5;
    x(2:2:end) = -2;

elseif j == 3  %1
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = 0.5;
    x(2:2:end) = -2;

elseif j == 4  %1
    n = 5000;
    x = ones(n,1);
    x(1:2:end) = 0.5;
    x(2:2:end) = -2;

elseif j == 5  %1
    n = 5000;
    x = ones(n,1);
    x(1:2:end) = 0.5;
    x(2:2:end) = -2;

elseif j == 6  %2
    n = 500;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 7  %2
    n = 1000;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 8  %2
    n = 3000;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 9  %2
    n = 5000;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 10  %2
    n = 9000;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 11  %4
    n = 700;
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 12  %4
    n = 2000;
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 13  %4
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 14  %7
    n = 500;
    x = 1:1:n;
    x = x';

elseif j == 15  %7
    n = 1000;
    x = 1:1:n;
    x = x';

elseif j == 16  %7
    n = 3000;
    x = 1:1:n;
    x = x';

elseif j == 17  %7
    n = 5000;
    x = 1:1:n;
    x = x';

elseif j == 18  %7
    n = 10000;
    x = 1:1:n;
    x = x';

elseif j == 19  %8
    n = 500;
    x = ones(n,1);
    x = 0.5 * x;

elseif j == 20  %8
    n = 1000;
    x = ones(n,1);
    x = 0.5 * x;

elseif j == 21  %8
    n = 3000;
    x = ones(n,1);
    x = 0.5 * x;
    
elseif j == 22  %8
    n = 5000;
    x = ones(n,1);
    x = 0.5 * x;

elseif j == 23  %8
    n = 10000;
    x = ones(n,1);
    x = 0.5 * x;

elseif j == 24  %10
    n = 500;
    x = ones(n,1);

elseif j == 25  %10
    n = 1000;
    x = ones(n,1);

elseif j == 26  %10
    n = 3000;
    x = ones(n,1);

elseif j == 27  %10
    n = 5000;
    x = ones(n,1);

elseif j == 28  %10
    n = 10000;
    x = ones(n,1);

elseif j == 29 %11
    n = 500;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 30 %11
    n = 1000;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 31 %11
    n = 3000;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 32 %11
    n = 5000;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 33 %11
    n = 10000;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 34 %13
    n = 500;
    x = ones(n,1);

elseif j == 35 %13
    n = 1000;
    x = ones(n,1);

elseif j == 36 %13
    n = 3000;
    x = ones(n,1);

elseif j == 37 %13
    n = 5000;
    x = ones(n,1);

elseif j == 38 %13
    n = 10000;
    x = ones(n,1);

elseif j == 39 %14
    n = 500;
    x = ones(n,1);

elseif j == 40 %14
    n = 1000;
    x = ones(n,1);

elseif j == 41 %14
    n = 3000;
    x = ones(n,1);

elseif j == 42 %14
    n = 5000;
    x = ones(n,1);

elseif j == 43 %14
    n = 10000;
    x = ones(n,1);

elseif j == 44 %15
    n = 500;
    x = ones(n,1);

elseif j == 45 %15
    n = 1000;
    x = ones(n,1);

elseif j == 46 %15
    n = 3000;
    x = ones(n,1);

elseif j == 47 %15
    n = 5000;
    x = ones(n,1);

elseif j == 48 %15
    n = 10000;
    x = ones(n,1);

elseif j == 49 %17
    n = 500;
    x = 0.1 * ones(n,1);

elseif j == 50 %17
    n = 1000;
    x = 0.1 * ones(n,1);

elseif j == 51 %17
    n = 3000;
    x = 0.1 * ones(n,1);

elseif j == 52 %17
    n = 5000;
    x = 0.1 * ones(n,1);

elseif j == 53 %17
    n = 10000;
    x = 0.1 * ones(n,1);

elseif j == 54  %19
    n = 600;%
    x = ones(n,1);

elseif j == 55  %19
    n = 2000;%
    x = ones(n,1);

elseif j == 56  %19
    n = 3000;%
    x = ones(n,1);

elseif j == 57  %19
    n = 5000;%
    x = ones(n,1);

elseif j == 58  %19
    n = 10000;%
    x = ones(n,1);

elseif j == 59 %20
    n = 500;
    x = ones(n,1);

elseif j == 60 %20
    n = 1000;
    x = ones(n,1);

elseif j == 61 %20
    n = 3000;
    x = ones(n,1);

elseif j == 62 %20
    n = 5000;
    x = ones(n,1);

elseif j == 63 %20
    n = 10000;
    x = ones(n,1);

elseif j == 64 %21
    n = 800;%
    x = ones(n,1);

elseif j == 65 %21
    n = 8000;%
    x = ones(n,1);

elseif j == 66 %22
    n = 500;%
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 67 %22
    n = 1000;%
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 68  %23
    n = 500;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 69  %23
    n = 1000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 70  %23
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 71  %23
    n = 5000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 72  %23
    n = 10000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 73  %24
    n = 500;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 74  %24
    n = 1000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 75  %24
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 76  %24
    n = 5000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 77  %24
    n = 10000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 78  %31
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 79  %31
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 80  %31
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 81  %31
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 82  %31
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 83 %33
    n = 500;
    x = zeros(n,1);

elseif j == 84 %33
    n = 1000;
    x = zeros(n,1);

elseif j == 85 %33
    n = 3000;
    x = zeros(n,1);

elseif j == 86 %33
    n = 5000;
    x = zeros(n,1);

elseif j == 87 %33
    n = 10000;
    x = zeros(n,1);

elseif j == 88 %35
    n = 500;
    x = ones(n,1);

elseif j == 89 %35
    n = 1000;
    x = ones(n,1);

elseif j == 90 %35
    n = 3000;
    x = ones(n,1);

elseif j == 91 %35
    n = 5000;
    x = ones(n,1);

elseif j == 92 %35
    n = 10000;
    x = ones(n,1);

elseif j == 93  %38
    n = 500;
    x = 1.5 * ones(n,1);

elseif j == 94  %38
    n = 1000;
    x = 1.5 * ones(n,1);

elseif j == 95  %38
    n = 3000;
    x = 1.5 * ones(n,1);

elseif j == 96  %38
    n = 5000;
    x = 1.5 * ones(n,1);

elseif j == 97  %38
    n = 10000;
    x = 1.5 * ones(n,1);

elseif j == 98 %39
    n = 500;
    x = ones(n,1);

elseif j == 99 %39
    n = 1000;
    x = ones(n,1);

elseif j == 100 %39
    n = 3000;
    x = ones(n,1);

elseif j == 101 %39
    n = 5000;
    x = ones(n,1);

elseif j == 102 %39
    n = 10000;
    x = ones(n,1);

elseif j == 103  %40 
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 104  %40 
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 105  %40 
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 106  %40  
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 107  %40  
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 108  %42
    n = 400;%
    x = ones(n,1);

elseif j == 109  %42
    n = 2000;%
    x = ones(n,1);

elseif j == 110  %43
    n = 500;%
    x = ones(n,1);

elseif j == 111  %43
    n = 1000;%
    x = ones(n,1);

elseif j == 112  %43
    n = 2000;%
    x = ones(n,1);

elseif j == 113  %43
    n = 2000;%
    x = ones(n,1);

elseif j == 114  %43
    n = 2000;%
    x = ones(n,1);

elseif j == 115 %44 
    n = 500;
    x = zeros(n,1);

elseif j == 116 %44 
    n = 1000;
    x = zeros(n,1);

elseif j == 117 %44 
    n = 3000;
    x = zeros(n,1);

elseif j == 118 %44
    n = 6000;
    x = zeros(n,1);

elseif j == 119 %44  
    n = 6000;
    x = zeros(n,1);

elseif j == 120  %48
    n = 500;
    x = 3 * ones(n,1);

elseif j == 121  %48
    n = 1000;
    x = 3 * ones(n,1);

elseif j == 122  %48
    n = 3000;
    x = 3 * ones(n,1);

elseif j == 123  %48
    n = 5000;
    x = 3 * ones(n,1);

elseif j == 124  %48
    n = 10000;
    x = 3 * ones(n,1);

elseif j == 125  %50 
    n = 2000;
    x = 0.5 * ones(n,1);

elseif j == 126  %50 
    n = 3000;
    x = 0.5 * ones(n,1);
    
elseif j == 127  %50  
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 128  %50  
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 129  %50 
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 130 %51 
    n =500;
    x = 0.8 * ones(n,1); 

elseif j == 131 %51 
    n =1000;
    x = 0.8 * ones(n,1); 

elseif j == 132 %51  
    n =3000;
    x = 0.8 * ones(n,1); 

elseif j == 133 %51  
    n =5000;
    x = 0.8 * ones(n,1);

elseif j == 134 %51  
    n =5000;
    x = 0.8 * ones(n,1);

elseif j == 135  %55
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 136  %55
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 137  %55
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 138  %55
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 139  %55
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 140  %59
    n = 500;%
    x = ones(n,1);

elseif j == 141  %59
    n = 1000;%
    x = ones(n,1);

elseif j == 142  %59
    n = 2000;%
    x = ones(n,1);

elseif j == 143  %59
    n = 2000;%
    x = ones(n,1);

elseif j == 144  %59
    n = 2000;%
    x = ones(n,1);

elseif j == 145  %62
    n = 500;
    x = zeros(n,1);

elseif j == 146  %62
    n = 1000;
    x = zeros(n,1);

elseif j == 147  %62
    n = 3000;
    x = zeros(n,1);
    
elseif j == 148  %62
    n = 5000;
    x = zeros(n,1);

elseif j == 149  %62
    n = 10000;
    x = zeros(n,1);

elseif j == 150 %68
    n = 500;%
    x = ones(n,1);

elseif j == 151 %68
    n = 2000;%
    x = ones(n,1);
    
elseif j == 152 %68
    n = 5000;%
    x = ones(n,1);

elseif j == 153 %68
    n = 10000;%
    x = ones(n,1);

elseif j == 154 %68
    n = 10000;%
    x = ones(n,1);

elseif j == 155 %73
    n = 500;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end

elseif j == 156 %73
    n = 3000;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end

elseif j == 157 %73
    n = 5000;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end
    
elseif j == 158 %73
    n = 10000;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end

elseif j == 159 %73
    n = 10000;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end

elseif j == 160 %74
    n = 500;
    x = 2 * ones(n,1);


elseif j == 161 %74
    n = 1000;
    x = 2 * ones(n,1);

elseif j == 162 %74
    n = 3000;
    x = 2 * ones(n,1);


elseif j == 163 %74
    n = 5000;
    x = 2 * ones(n,1);

elseif j == 164 %74
    n = 10000;
    x = 2 * ones(n,1);

elseif j == 165 %77
    n = 500;
    x = ones(n,1);

elseif j == 166 %77
    n = 1000;
    x = ones(n,1);

elseif j == 167 %77
    n = 3000;
    x = ones(n,1);

elseif j == 168 %77
    n = 5000;
    x = ones(n,1);

elseif j == 169 %77
    n = 10000;
    x = ones(n,1);

elseif j == 170 %78
    n = 700;%
    x = ones(n,1);
    x(1:2:end) = 2;
    x(2:2:end) = 0;

elseif j == 171 %78
    n = 1000;%
    x = ones(n,1);
    x(1:2:end) = 2;
    x(2:2:end) = 0;

elseif j == 172 %78
    n = 9000;%
    x = ones(n,1);
    x(1:2:end) = 2;
    x(2:2:end) = 0;

elseif j == 173 %78
    n = 9000;%
    x = ones(n,1);
    x(1:2:end) = 2;
    x(2:2:end) = 0;

elseif j == 174 %78
    n = 9000;%
    x = ones(n,1);
    x(1:2:end) = 2;
    x(2:2:end) = 0;

elseif j == 175 %81
    n = 500;
    x = ones(n,1);

elseif j == 176 %81
    n = 1000;
    x = ones(n,1);

elseif j == 177 %81
    n = 3000;
    x = ones(n,1);

elseif j == 178 %81
    n = 5000;
    x = ones(n,1);

elseif j == 179 %81
    n = 10000;
    x = ones(n,1);

elseif j == 180 %84
    n = 500;
    x = ones(n,1);

elseif j == 181 %84
    n = 1000;
    x = ones(n,1);

elseif j == 182 %84
    n = 3000;
    x = ones(n,1);

elseif j == 183 %84
    n = 6000;
    x = ones(n,1);

elseif j == 184 %84
    n = 8000;
    x = ones(n,1);

elseif j == 185 %85
    n = 500;
    x = ones(n,1);

elseif j == 186 %85
    n = 1000;
    x = ones(n,1);

elseif j == 187 %85
    n = 3000;
    x = ones(n,1);

elseif j == 188 %85
    n = 5000;
    x = ones(n,1);
    
elseif j == 189 %85
    n = 10000;
    x = ones(n,1);

elseif j == 190 %86
    n = 500;
    x = ones(n,1);

elseif j == 191 %86
    n = 1000;
    x = ones(n,1);

elseif j == 192 %86
    n = 3000;
    x = ones(n,1);

elseif j == 193 %86
    n = 5000;
    x = ones(n,1);
    
elseif j == 194 %86
    n = 10000;
    x = ones(n,1);

elseif j == 195 %87
    n = 500;
    x = ones(n,1);

elseif j == 196 %87
    n = 1000;
    x = ones(n,1);

elseif j == 197 %87
    n = 3000;
    x = ones(n,1);

elseif j == 198 %87
    n = 5000;
    x = ones(n,1);

elseif j == 199 %87
    n = 10000;
    x = ones(n,1);

elseif j == 200 %88
    n = 500;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 201 %88
    n = 1000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 202 %88
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 203 %88
    n = 5000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 204 %88
    n = 10000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 205 %89
    n = 5000;
    x = ones(n,1);

elseif j == 206 %89
    n = 5000;
    x = ones(n,1);

elseif j == 207 %90
    n = 600;
    x = 1.5 * ones(n,1);

elseif j == 208 %90
    n = 900;
    x = 1.5 * ones(n,1);

elseif j == 209 %90
    n = 3000;
    x = 1.5 * ones(n,1);

elseif j == 210 %90
    n = 6000;
    x = 1.5 * ones(n,1);

elseif j == 211 %90
    n = 10000;
    x = 1.5 * ones(n,1);

elseif j == 212 %92 
    n = 8000;
    x = 0.5 * ones(n,1);

elseif j == 213 %92  
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 214 %99  
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 215 %99 
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 216 %99 
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 217 %99  
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 218 %99  
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 219 %101  
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 220 %101 
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 221 %101 
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 222 %101 
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 223 %101  
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 224 %102
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 225 %102  
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 226 %102 
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 227 %102
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 228 %102  
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 229 %103  
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 230 %103 
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 231 %103  
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 232 %103  
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 233 %103 
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 234 %106  
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 235 %106  
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 236 %106 
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 237 %106  
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 238 %106 
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 239 %65
    n = 500;
    x = zeros(n,1);

elseif j == 240 %65
    n = 7000;
    x = zeros(n,1);

elseif j == 241 %65
    n = 9000;
    x = zeros(n,1);

elseif j == 242 %66
    n = 1000;
    x = zeros(n,1);

elseif j == 243 %66
    n = 5000;
    x = zeros(n,1);

elseif j == 244 %83
    n = 2000;
    x = zeros(n,1);

elseif j == 245 %95
    n = 600;
    x = 0.5 * ones(n,1);

elseif j == 246 %95
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 247 %104
    n = 800;
    x = 0.5 * ones(n,1);

elseif j == 248 %104
    n = 1000;
    x = 0.5 * ones(n,1);
end

