#  Example of non strictly complementary constraints
#  from Forsgren, Gill and M.H. Wright (section 4), interior methods
#  for Nonlinear Optimization, Siam Review, vol. 44, no. 4, pp 525-597.

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2 
# Solution x* = (2, 2), y*=(2, 0) and sosc holds at x*. 

# classification : QLR2-MN-2-2

var x{1..2} ;


minimize f:(x[1]^2 + x[2]^2)/2;

subject to 

   const1: x[1] + x[2] >= 4;
   const2: x[2]  >= 2;

   