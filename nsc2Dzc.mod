# Example of non strictly complementary constraints

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2

# classification : QQR2-MN-2-2

var x{1..2} ;

minimize f:((x[1] - 1)^2 + x[2]^2)/2;

subject to 
   const1: 1 - x[1]^2 - x[2]^2 >= 0;
   const2: x[2] >= 0;