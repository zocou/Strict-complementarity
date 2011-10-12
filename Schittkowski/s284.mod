# classification : LQR2-MN-15-15

param N := 15;

var x{1..N} := 0;
param c{1..N};
param b{1..10};
param a{1..10, 1..N};

minimize f:
-1*sum {i in 1..N} c[i]*x[i];

subject to cons1{i in 1..10}:
b[i] - sum {j in 1..N} a[i,j]*x[j]^2 >= 0;

data;
param c:=
1	20
2	40
3	400
4	20
5	80
6	20
7	40
8	140
9	380
10	280
11	80
12	40
13	140
14	40
15	120;

param b:=
1	385
2	470
3	560
4	565
5	645
6	430
7	485
8	455
9	390
10	460;

param a:
	1	2	3	4	5	6	7	8	9	10	11	12	13	14	15:=
1	100	100	10	5	10	0	0	25	0	10	55	5	45	20	0
2	90	100	10	35	20	5	0	35	55	25	20	0	40	25	10
3	70	50	0	55	25	100	40	50	0	30	60	10	30	0	40
4	50	0	0	65	35	100	35	60	0	15	0	75	35	30	65
5	50	10	70	60	45	45	0	35	65	5	75	100	75	10	0
6	40	0	50	95	50	35	10	60	0	45	15	20	0	5	5
7	30	60	30	90	0	30	5	25	0	70	20	25	70	15	15
8	20	30	40	25	40	25	15	10	80	20	30	30	5	65	20
9	10	70	10	35	25	65	0	30	0	0	25	0	15	50	55
10	5	10	100	5	20	5	10	35	95	70	20	10	35	10	30;

## solve;

#display x;