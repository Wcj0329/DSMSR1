function x = xvalue5(j)
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

elseif j == 5  %2
    n = 500;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 6  %2
    n = 1000;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 7  %2
    n = 3000;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 8  %2
    n = 5000;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 9  %2
    n = 9000;
    x = ones(n,1);
    x = 0.2 * x;

elseif j == 10  %4
    n = 700;
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 11  %4
    n = 2000;
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 12  %4
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 13  %7
    n = 500;
    x = 1:1:n;
    x = x';

elseif j == 14  %7
    n = 1000;
    x = 1:1:n;
    x = x';

elseif j == 15  %7
    n = 3000;
    x = 1:1:n;
    x = x';

elseif j == 16  %7
    n = 5000;
    x = 1:1:n;
    x = x';

elseif j == 17  %7
    n = 10000;
    x = 1:1:n;
    x = x';

elseif j == 18  %8
    n = 500;
    x = ones(n,1);
    x = 0.5 * x;

elseif j == 19  %8
    n = 1000;
    x = ones(n,1);
    x = 0.5 * x;

elseif j == 20  %8
    n = 3000;
    x = ones(n,1);
    x = 0.5 * x;
    
elseif j == 21  %8
    n = 5000;
    x = ones(n,1);
    x = 0.5 * x;

elseif j == 22  %8
    n = 10000;
    x = ones(n,1);
    x = 0.5 * x;

elseif j == 23  %10
    n = 500;
    x = ones(n,1);

elseif j == 24  %10
    n = 1000;
    x = ones(n,1);

elseif j == 25  %10
    n = 3000;
    x = ones(n,1);

elseif j == 26  %10
    n = 5000;
    x = ones(n,1);

elseif j == 27  %10
    n = 10000;
    x = ones(n,1);

elseif j == 28 %11
    n = 500;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 29 %11
    n = 1000;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 30 %11
    n = 3000;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 31 %11
    n = 5000;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 32 %11
    n = 10000;
    x = ones(n,1);
    x = (1/n) * x;

elseif j == 33 %13
    n = 500;
    x = ones(n,1);

elseif j == 34 %13
    n = 1000;
    x = ones(n,1);

elseif j == 35 %13
    n = 3000;
    x = ones(n,1);

elseif j == 36 %13
    n = 5000;
    x = ones(n,1);

elseif j == 37 %13
    n = 10000;
    x = ones(n,1);

elseif j == 38 %14
    n = 500;
    x = ones(n,1);

elseif j == 39 %14
    n = 1000;
    x = ones(n,1);

elseif j == 40 %14
    n = 3000;
    x = ones(n,1);

elseif j == 41 %14
    n = 5000;
    x = ones(n,1);

elseif j == 42 %14
    n = 10000;
    x = ones(n,1);

elseif j == 43 %15
    n = 500;
    x = ones(n,1);

elseif j == 44 %15
    n = 1000;
    x = ones(n,1);

elseif j == 45 %15
    n = 3000;
    x = ones(n,1);

elseif j == 46 %15
    n = 5000;
    x = ones(n,1);

elseif j == 47 %15
    n = 10000;
    x = ones(n,1);

elseif j == 48 %17
    n = 500;
    x = 0.1 * ones(n,1);

elseif j == 49 %17
    n = 1000;
    x = 0.1 * ones(n,1);

elseif j == 50 %17
    n = 3000;
    x = 0.1 * ones(n,1);

elseif j == 51 %17
    n = 5000;
    x = 0.1 * ones(n,1);

elseif j == 52 %17
    n = 10000;
    x = 0.1 * ones(n,1);

elseif j == 53  %19
    n = 600;%
    x = ones(n,1);

elseif j == 54  %19
    n = 2000;%
    x = ones(n,1);

elseif j == 55  %19
    n = 3000;%
    x = ones(n,1);

elseif j == 56  %19
    n = 5000;%
    x = ones(n,1);

elseif j == 57  %19
    n = 10000;%
    x = ones(n,1);

elseif j == 58 %20
    n = 500;
    x = ones(n,1);

elseif j == 59 %20
    n = 1000;
    x = ones(n,1);

elseif j == 60 %20
    n = 3000;
    x = ones(n,1);

elseif j == 61 %20
    n = 5000;
    x = ones(n,1);

elseif j == 62 %20
    n = 10000;
    x = ones(n,1);

elseif j == 63 %21
    n = 800;%
    x = ones(n,1);

elseif j == 64 %21
    n = 8000;%
    x = ones(n,1);

elseif j == 65 %22
    n = 500;%
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 66 %22
    n = 1000;%
    x = ones(n,1);
    x(1:2:end) = -1.2;
    x(2:2:end) = 1;

elseif j == 67  %23
    n = 500;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 68  %23
    n = 1000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 69  %23
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 70  %23
    n = 5000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 71  %23
    n = 10000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 72  %24
    n = 500;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 73  %24
    n = 1000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 74  %24
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 75  %24
    n = 5000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 76  %24
    n = 10000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 77  %31
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 78  %31
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 79  %31
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 80  %31
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 81  %31
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 82 %33
    n = 500;
    x = zeros(n,1);

elseif j == 83 %33
    n = 1000;
    x = zeros(n,1);

elseif j == 84 %33
    n = 3000;
    x = zeros(n,1);

elseif j == 85 %33
    n = 5000;
    x = zeros(n,1);

elseif j == 86 %33
    n = 10000;
    x = zeros(n,1);

elseif j == 87 %35
    n = 500;
    x = ones(n,1);

elseif j == 88 %35
    n = 1000;
    x = ones(n,1);

elseif j == 89 %35
    n = 3000;
    x = ones(n,1);

elseif j == 90 %35
    n = 5000;
    x = ones(n,1);

elseif j == 91 %35
    n = 10000;
    x = ones(n,1);

elseif j == 92  %38
    n = 500;
    x = 1.5 * ones(n,1);

elseif j == 93  %38
    n = 1000;
    x = 1.5 * ones(n,1);

elseif j == 94  %38
    n = 3000;
    x = 1.5 * ones(n,1);

elseif j == 95  %38
    n = 5000;
    x = 1.5 * ones(n,1);

elseif j == 96  %38
    n = 10000;
    x = 1.5 * ones(n,1);

elseif j == 97 %39
    n = 500;
    x = ones(n,1);

elseif j == 98 %39
    n = 1000;
    x = ones(n,1);

elseif j == 99 %39
    n = 3000;
    x = ones(n,1);

elseif j == 100 %39
    n = 5000;
    x = ones(n,1);

elseif j == 101 %39
    n = 10000;
    x = ones(n,1);

elseif j == 102  %40  %无备注初始点
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 103  %40  %无备注初始点
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 104  %40  %无备注初始点
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 105  %40  %无备注初始点
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 106  %40  %无备注初始点
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 107  %42
    n = 400;%
    x = ones(n,1);

elseif j == 108  %42
    n = 2000;%
    x = ones(n,1);

elseif j == 109  %43
    n = 500;%
    x = ones(n,1);

elseif j == 110  %43
    n = 1000;%
    x = ones(n,1);

elseif j == 111  %43
    n = 2000;%
    x = ones(n,1);

elseif j == 112 %44  %无备注初始点
    n = 500;
    x = zeros(n,1);

elseif j == 113 %44  %无备注初始点
    n = 1000;
    x = zeros(n,1);

elseif j == 114 %44  %无备注初始点
    n = 3000;
    x = zeros(n,1);

elseif j == 115 %44  %无备注初始点
    n = 6000;
    x = zeros(n,1);

elseif j == 116  %48
    n = 500;
    x = 3 * ones(n,1);

elseif j == 117  %48
    n = 1000;
    x = 3 * ones(n,1);

elseif j == 118  %48
    n = 3000;
    x = 3 * ones(n,1);

elseif j == 119  %48
    n = 5000;
    x = 3 * ones(n,1);

elseif j == 120  %48
    n = 10000;
    x = 3 * ones(n,1);

elseif j == 121  %50  %无备注初始点
    n = 2000;
    x = 0.5 * ones(n,1);

elseif j == 122  %50  %无备注初始点
    n = 3000;
    x = 0.5 * ones(n,1);
    
elseif j == 123  %50  %无备注初始点
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 124  %50  %无备注初始点
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 125 %51  %无备注初始点（107）
    n =500;
    x = 0.8 * ones(n,1); % x = 0.8 * ones(n,1)也可以运行

elseif j == 126 %51  %无备注初始点（107）
    n =1000;
    x = 0.8 * ones(n,1); % x = 0.8 * ones(n,1)也可以运行

elseif j == 127 %51  %无备注初始点（107）
    n =3000;
    x = 0.8 * ones(n,1); % x = 0.8 * ones(n,1)也可以运行

elseif j == 128 %51  %无备注初始点（107）
    n =5000;
    x = 0.8 * ones(n,1); % x = 0.8 * ones(n,1)也可以运行

elseif j == 129  %55
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 130  %55
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 131  %55
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 132  %55
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 133  %59
    n = 500;%
    x = ones(n,1);

elseif j == 134  %59
    n = 1000;%
    x = ones(n,1);

elseif j == 135  %59
    n = 2000;%
    x = ones(n,1);

elseif j == 136  %62
    n = 500;
    x = zeros(n,1);

elseif j == 137  %62
    n = 1000;
    x = zeros(n,1);

elseif j == 138  %62
    n = 3000;
    x = zeros(n,1);
    
elseif j == 139  %62
    n = 5000;
    x = zeros(n,1);

elseif j == 140  %62
    n = 10000;
    x = zeros(n,1);

elseif j == 141 %68
    n = 500;%
    x = ones(n,1);

elseif j == 142 %68
    n = 2000;%
    x = ones(n,1);
    
elseif j == 143 %68
    n = 5000;%
    x = ones(n,1);

elseif j == 144 %68
    n = 10000;%
    x = ones(n,1);

elseif j == 145 %73
    n = 500;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end

elseif j == 146 %73
    n = 3000;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end

elseif j == 147 %73
    n = 5000;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end
    
elseif j == 148 %73
    n = 10000;
    x = ones(n,1);
    for i = 1:n
        x(i) = 1 - (i/n);
    end

elseif j == 149 %74
    n = 500;
    x = 2 * ones(n,1);


elseif j == 150 %74
    n = 1000;
    x = 2 * ones(n,1);

elseif j == 151 %74
    n = 3000;
    x = 2 * ones(n,1);


elseif j == 152 %74
    n = 5000;
    x = 2 * ones(n,1);

elseif j == 153 %74
    n = 10000;
    x = 2 * ones(n,1);

elseif j == 154 %77
    n = 500;
    x = ones(n,1);

elseif j == 155 %77
    n = 1000;
    x = ones(n,1);

elseif j == 156 %77
    n = 3000;
    x = ones(n,1);

elseif j == 157 %77
    n = 5000;
    x = ones(n,1);

elseif j == 158 %77
    n = 10000;
    x = ones(n,1);

elseif j == 159 %78
    n = 700;%
    x = ones(n,1);
    x(1:2:end) = 2;
    x(2:2:end) = 0;

elseif j == 160 %78
    n = 1000;%
    x = ones(n,1);
    x(1:2:end) = 2;
    x(2:2:end) = 0;

elseif j == 161 %78
    n = 9000;%
    x = ones(n,1);
    x(1:2:end) = 2;
    x(2:2:end) = 0;

elseif j == 162 %81
    n = 500;
    x = ones(n,1);

elseif j == 163 %81
    n = 1000;
    x = ones(n,1);

elseif j == 164 %81
    n = 3000;
    x = ones(n,1);

elseif j == 165 %81
    n = 5000;
    x = ones(n,1);

elseif j == 166 %81
    n = 10000;
    x = ones(n,1);

elseif j == 167 %84
    n = 500;
    x = ones(n,1);

elseif j == 168 %84
    n = 1000;
    x = ones(n,1);

elseif j == 169 %84
    n = 3000;
    x = ones(n,1);

elseif j == 170 %84
    n = 6000;
    x = ones(n,1);

elseif j == 171 %84
    n = 8000;
    x = ones(n,1);

elseif j == 172 %85
    n = 500;
    x = ones(n,1);

elseif j == 173 %85
    n = 1000;
    x = ones(n,1);

elseif j == 174 %85
    n = 3000;
    x = ones(n,1);

elseif j == 175 %85
    n = 5000;
    x = ones(n,1);
    
elseif j == 176 %85
    n = 10000;
    x = ones(n,1);

elseif j == 177 %86
    n = 500;
    x = ones(n,1);

elseif j == 178 %86
    n = 1000;
    x = ones(n,1);

elseif j == 179 %86
    n = 3000;
    x = ones(n,1);

elseif j == 180 %86
    n = 5000;
    x = ones(n,1);
    
elseif j == 181 %86
    n = 10000;
    x = ones(n,1);

elseif j == 182 %87
    n = 500;
    x = ones(n,1);

elseif j == 183 %87
    n = 1000;
    x = ones(n,1);

elseif j == 184 %87
    n = 3000;
    x = ones(n,1);

elseif j == 185 %87
    n = 5000;
    x = ones(n,1);

elseif j == 186 %87
    n = 10000;
    x = ones(n,1);

elseif j == 187 %88
    n = 500;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 188 %88
    n = 1000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 189 %88
    n = 3000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 190 %88
    n = 5000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 191 %88
    n = 10000;
    x = ones(n,1);
    x(1:2:end) = 3;
    x(2:2:end) = 0.1;

elseif j == 192 %89
    n = 5000;
    x = ones(n,1);

elseif j == 193 %90
    n = 600;
    x = 1.5 * ones(n,1);

elseif j == 194 %90
    n = 900;
    x = 1.5 * ones(n,1);

elseif j == 195 %90
    n = 3000;
    x = 1.5 * ones(n,1);

elseif j == 196 %90
    n = 6000;
    x = 1.5 * ones(n,1);

elseif j == 197 %90
    n = 10000;
    x = 1.5 * ones(n,1);

elseif j == 198 %92  %无备注初始点
    n = 8000;
    x = 0.5 * ones(n,1);

elseif j == 199 %92  %无备注初始点
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 200 %99  %无备注初始点
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 201 %99  %无备注初始点
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 202 %99  %无备注初始点
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 203 %99  %无备注初始点
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 204 %99  %无备注初始点
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 205 %101  %无备注初始点
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 206 %101  %无备注初始点
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 207 %101  %无备注初始点
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 208 %101  %无备注初始点
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 209 %101  %无备注初始点
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 210 %102  %无备注初始点
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 211 %102  %无备注初始点
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 212 %102  %无备注初始点
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 213 %102  %无备注初始点
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 214 %102  %无备注初始点
    n = 10000;
    x = 0.5 * ones(n,1);

elseif j == 215 %103  %无备注初始点
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 216 %103  %无备注初始点
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 217 %103  %无备注初始点
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 218 %103  %无备注初始点
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 219 %106  %无备注初始点
    n = 500;
    x = 0.5 * ones(n,1);

elseif j == 220 %106  %无备注初始点
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 221 %106  %无备注初始点
    n = 3000;
    x = 0.5 * ones(n,1);

elseif j == 222 %106  %无备注初始点
    n = 5000;
    x = 0.5 * ones(n,1);

elseif j == 223 %106  %无备注初始点
    n = 10000;
    x = 0.5 * ones(n,1);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%新增函数

elseif j == 224 %65
    n = 500;
    x = zeros(n,1);

elseif j == 225 %65
    n = 7000;
    x = zeros(n,1);

elseif j == 226 %65
    n = 9000;
    x = zeros(n,1);

elseif j == 227 %66
    n = 1000;
    x = zeros(n,1);

elseif j == 228 %66
    n = 5000;
    x = zeros(n,1);

elseif j == 229 %83
    n = 2000;
    x = zeros(n,1);

elseif j == 230 %95
    n = 600;
    x = 0.5 * ones(n,1);

elseif j == 231 %95
    n = 1000;
    x = 0.5 * ones(n,1);

elseif j == 232 %104
    n = 800;
    x = 0.5 * ones(n,1);

elseif j == 233 %104
    n = 1000;
    x = 0.5 * ones(n,1);
end

