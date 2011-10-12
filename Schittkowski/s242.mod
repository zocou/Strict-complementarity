# Schittkowski test set problem number s 242
# Solution                         : x* = (1, 10, 1)
# Optimal value                    : f(x*) = 0
# Active constraints at x*          : x[2] >= 10
# Lagrange multipliers umax*/umin* : /0 = 
# Non strictly complementary constraints :  x[2] >= 10

# classification : LBR2-MN-3-3

param N := 3;

var x{1..N};

param t{i in 1..10} := 0.1*i;

minimize f:
sum {i in 1..10} ((exp(-1*x[1]*t[i]) - exp(-1*x[2]*t[i])) -
x[3]*(exp(-1*t[i]) - exp(-10*t[i])))^2;  

subject to cons1{i in 1..N}:
0 <= x[i] <= 10;

data;
var x:=
1	2.5
2	10
3	10;

## solve;

#display x;
