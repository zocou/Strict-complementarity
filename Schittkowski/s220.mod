# Schittkowski test set problem number s 220
# Solution                         : x* = (1, 0),
# Optimal value                    : f(x*) = 0
# Active constraints at x*          : {2, 3}
# Lagrange multipliers umax*/umin* : 1/ = 
# Non strictly complementary constraints : cons2 ?

# classification : LOR2-MN-2-2

param N := 2;

var x{1..N};

minimize f:
x[1];

subject to cons1:
(x[1] - 1)^3 - x[2] = 0;

subject to cons2:
x[1] >= 1;

subject to cons3:
x[2] >= 0;

data;
#var x:=
#1	25000
#2	25000;

## solve;

#display x;
