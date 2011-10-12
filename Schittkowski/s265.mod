# Schittkowski test set problem number s 252
# Solution                         : x* = (1, 0, 1, 0)
# Optimal value                    : f(x*) = 0.9747465983
# Active constraints at x*          : x[2] >= 0, x[4] >= 0
# Lagrange multipliers umax*/umin* : 1/0 = 
# Non strictly complementary constraints : x[2] >= 0, x[4] >= 0

# classification : OLR2-MN-4-6

param N := 4;

var x{1..N};

minimize f:
sum {i in 1..2} (1 - exp(-10*x[i]*exp(-1*x[i+2])));

subject to cons1:
x[1] + x[2] - 1 = 0;

subject to cons2:
x[3] + x[4] - 1 = 0;

subject to cons3{i in 1..4}:
0 <= x[i] <= 1;

data;
var x:=
1	0
2	0
3	0
4	0;

## solve;

#display x;
