# Schittkowski test set problem number s 221
# Solution                         : x* = (1, 0),
# Optimal value                    : f(x*) = -1
# Active constraints at x*          : cons1, x[2] >= 0
# Lagrange multipliers umax*/umin* : /0 = 
# Non strictly complementary constraints : cons1, x[2] >= 0
param N := 2;

var x{1..N} ;#>= 0;

minimize f: -x[1];

subject to cons1:
(1 - x[1])^3 - x[2] >= 0;
# Bounds constraints
subject to bdsconstr{i in 1..N}: x[i] >= 0;

data;
var x:=
1	0.25
2	0.25;

#solve;

#display x;
