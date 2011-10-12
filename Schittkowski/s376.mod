# classification : OOR2-MN-10-27

param N := 10;

var x{1..N};

minimize f:
-20000*(0.15*x[1]+14*x[2]-0.06)/(0.002+x[1]+60*x[2]);

subject to cons1:
x[1] - 0.75/(x[3]*x[4]) >= 0;

subject to cons2:
x[1] - x[9]/(x[5]*x[4]) >= 0;

subject to cons3:
x[1] - x[10]/(x[6]*x[4]) - 10/x[4] >= 0;

subject to cons4:
x[1] - 0.19/(x[4]*x[7]) - 10/x[4] >= 0;

subject to cons5:
x[1] - 0.125/(x[4]*x[8]) >= 0;

subject to cons6:
10000*x[2] - 0.00131*x[9]*x[5]^0.666*x[4]^1.5 >= 0;

subject to cons7:
10000*x[2] - 0.001038*x[10]*x[6]^1.6*x[4]^3 >= 0;

subject to cons8:
10000*x[2] - 0.000223*x[7]^0.666*x[4]^1.5 >= 0;

subject to cons9:
10000*x[2] - 0.000076*x[8]^3.55*x[4]^5.66 >= 0;

subject to cons10:
10000*x[2] - 0.000698*x[3]^1.2*x[4]^2 >= 0;

subject to cons11:
10000*x[2] - 0.00005*x[3]^1.6*x[4]^3 >= 0;

subject to cons12:
10000*x[2] - 0.00000654*x[3]^2.42*x[4]^4.17 >= 0;

subject to cons13:
10000*x[2] - 0.000257*x[3]^0.666*x[4]^1.5 >= 0;

subject to cons14:
30 - 2.003*x[4]*x[5] - 1.885*x[6]*x[4] - 0.184*x[8]*x[4] - 2*x[3]^0.803*x[4] >= 0;

subject to cons15:
x[9]+x[10] - 0.255 = 0;

subject to cons16{i in 5..10}:
x[i] >= 0.5e-4;

subject to cons17{i in 1..2}:
x[i] >= 0;

subject to cons18:
0.0081 >= x[3] >= 0.5e-4;

subject to cons19:
1000 >= x[4] >= 10;

subject to cons20:
10 >= x[1];

subject to cons21:
0.1 >= x[2];

subject to cons22:
0.0017 >= x[5];

subject to cons23:
0.0013 >= x[6];

subject to cons24:
0.0027 >= x[7];

subject to cons25:
0.002 >= x[8];

subject to cons26:
1 >= x[9];

subject to cons27:
1 >= x[10];

data;
var x:=
1	10
2	0.005
3	0.0081
4	100
5	0.0017
6	0.0013
7	0.0027
8	0.002
9	0.15
10	0.105;

## solve;

#display x;
