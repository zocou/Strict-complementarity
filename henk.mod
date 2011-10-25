# Example from Affine scaling interior point Newton methods for
# problems with simple bounds, section 6, example 2
# limits in convex programming

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints : y >=0

#   classification OLR2-MN-2-2

var x;
var y;


minimize f: - x^2/ 2 + y^2/ 2 - y * x^2 + x;
subject to 

   g1: x >= 0;
   
   g2: y >= 0;

# nsc solution : x*=(0, 0) and y* =(1, 0)
# strictly complementary minimizers
# x* =(1, 1) and y* =(0, 0)
# x* =((sqrt{3}- 1)/2, (2 - sqrt{3})/2) and y* =(0, 0)