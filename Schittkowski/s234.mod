# Schittkowski test set problem number s 234
# Solution                         : x* = (1/5, 1/5),
# Optimal value                    : f(x*) = -4/5
# Active constraints at x*          : x[1] >= 1/5, x[2] >= 1/5
# Lagrange multipliers umax*/umin* : 1/0 = 
# Non strictly complementary constraints :  x[2] >= 1/5

# classification : OQR2-MN-2-3

param N := 2;

var x{1..N};

minimize f:
(x[2] - x[1])^4 - (1-x[1]);

subject to cons1:
-1*x[1]^2 - x[2]^2 + 1 >= 0;

subject to cons2:
0.2 <= x[1] <= 2;

subject to cons3:
0.2 <= x[2] <= 2;

data;
var x:=
1	0
2	0;

## solve;

#display x;
