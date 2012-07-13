#  Example 2.1 of non strictly complementary constraints
#  from Jittorntrum and Osborne (section 4), a modified barrier
#  function method with improved rate of convergence for degnerate
#  problems, Journal of Australian Mathematical Society No 21 (Series
#  B), pp. 305-329

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2 
# Solution x* = (0, 0), y*=(1, 0) and sosc did not hold at x*.  

# classification : QLR2-MN-2-2

var x{1..2} ;
param xi:=1;

minimize f: x[2];

subject to 

   const1: x[1] - x[2]^2 >= 0;
   const2: x[1] + xi*x[2]  >= 2;

   