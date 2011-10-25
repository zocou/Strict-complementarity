# Example of non strictly complementary constraints
# from  section 6, of S. J. Wright, Constraint Identification
# and Algorithm Stabilization for Degenerate Nonlinear Programs
# Technical report ANL/MCS_P865-1200, Dec. 2000

# Number of variables:   2
# Number of constraints: 3
# Non strictly complementary constraints: const2

#   classification LQR2-AN-2-3

var x{1..2};


minimize f: x[1];

subject to 

   const1:  4 - (x[1] - 2)^2 - x[2]^2 >= 0;
   const2: 16 - (x[1] - 4)^2 - x[2]^2 >= 0;
   const3:  4 - x[1]^2 - (x[2] - 2)^2 >= 0;
   
# x* =(0, 0)^T, y* = (1/4 - 2 a, a, 0)^T, 0 <= a 1/8