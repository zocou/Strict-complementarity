# Schittkowski test set problem number s 252
# Solution                         : x* = (- 1, 1, 0)
# Optimal value                    : f(x*) = 1/25
# Active constraints at x*          : cons2
# Lagrange multipliers umax*/umin* : 1/0 = 
# Non strictly complementary constraints : cons2


param N := 3;

var x{1..N};

minimize f:
0.01*(x[1] - 1)^2 + (x[2] - x[1]^2)^2;

subject to cons1:
x[1] + x[3]^2 + 1 = 0;

subject to cons2:
x[1] <= - 1;

data;
var x:=
1	-1
2	2
3	2;

#solve;

#display x;
