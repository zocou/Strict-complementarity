# Schittkowski test set problem number s 270
# Solution                         : x* = (1, 2, 3, 4, 2)
# Optimal value                    : f(x*) = -1
# Active constraints at x*         : cons1, i - x[i] >= 0, i =1--4
# Lagrange multipliers umax*/umin* : /0 = 
# Non strictly complementary constraints : cons1, i - x[i] >= 0,
#                                          i =1--4 
# Classification : OQR2-MN-5-5

param N := 5;

var x{1..N};

minimize f:
x[1]*x[2]*x[3]*x[4] - 3*x[1]*x[2]*x[4] - 4*x[1]*x[2]*x[3] +
12*x[1]*x[2] - x[2]*x[3]*x[4] + 3*x[2]*x[4] + 4*x[2]*x[3] - 12*x[2] -
2*x[1]*x[3]*x[4] + 6*x[1]*x[4] + 8*x[1]*x[3] - 24*x[1] + 2*x[3]*x[4] -
6*x[4] - 8*x[3] + 24 + 1.5*x[5]^4 - 5.75*x[5]^3 + 5.25*x[5]^2; 

subject to cons1:
34 - x[1]^2 - x[2]^2 - x[3]^2 - x[4]^2 - x[5]^2 >= 0;

subject to cons2{i in 1..4}:
x[i] >= i;

data;
var x:=
1	1.1
2	2.1
3	3.1
4	4.1
5	-1;
#solve;

#display x;
