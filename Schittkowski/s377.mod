# classification : OLR2-MN-10-13

param N := 10;

var x{1..N}:= 0.1 ; #>= 0.1e-4, <= 10, := 0.1;
param A{1..10};

minimize f:
sum {i in 1..N} x[i]*(A[i]+log(x[i]/(sum{j in 1..10} x[j])));

subject to cons1:
x[1] - 2*x[2] + 2*x[3] + x[6] + x[10] - 2 = 0;

subject to cons2:
x[4] - 2*x[5] + x[6] + x[7] - 1 = 0;

subject to cons3:
x[3] + x[7] + x[8] + 2*x[9] + x[10] - 1 = 0;

# Bounds constraints
subject to bdscons{i in 1..N}: 0.1e-4 <= x[i] <= 10;

data;
param A:=
1	-6.089
2	-17.164
3	-34.054
4	-5.914
5	-24.721
6	-14.986
7	-24.100
8	-10.708
9	-26.662
10	-22.179;
## solve;

#display x;
