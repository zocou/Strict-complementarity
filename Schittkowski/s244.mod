# Schittkowski test set problem number s 244
# Solution                         : x* = (1, 10, 5)
# Optimal value                    : f(x*) = 0
# Active constraints at x*          : x[2] >= 10
# Lagrange multipliers umax*/umin* : /0 = 
# Non strictly complementary constraints :  x[2] >= 10

# classification : OBR2-MN-3-3

param N := 3;

var x{1..N};

param z{i in 1..10} := 0.1*i;
param y{i in 1..10} := exp(-1*z[i]) - 5*exp(-10*z[i]);

minimize f:
sum {i in 1..10} (exp(-1*x[1]*z[i]) - x[3]*exp(-1*x[2]*z[i]) - y[i])^2;

subject to cons1{i in 1..N}:
0 <= x[i] <= 10;

data;
var x:=
1	1
2	2
3	1;

## solve;

#display x;
