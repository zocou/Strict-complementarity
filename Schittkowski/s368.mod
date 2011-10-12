# Schittkowski test set problem number s 368
# Solution                         : x* = (1, 1, 1, 1, 1, 1, 1, 1) 
# Optimal value                    : f(x*) = 0
# Active constraints at x*         : x[i] <= 1, i = 1--8
# Lagrange multipliers umax*/umin* : / = 
# Non strictly complementary constraints : x[i] <= 1, i = 1--8

# classification : OBR2-MN-8-8

param N := 8;

var x{1..N} := 1;

minimize f:
-1*(sum {i in 1..8} x[i]^2)*(sum {i in 1..8} x[i]^4) + (sum {i in 1..8} x[i]^3)^2;

subject to cons1{i in 1..8}:
0 <= x[i] <= 1;


## solve;

#display x;
