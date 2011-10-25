# Example of non strictly complementary constraints
# from  section Introduction of S. J. Wright, Constraint Identification
# and Algorithm Stabilization for Degenerate Nonlinear Programs
# Technical report ANL/MCS_P865-1200, Dec. 2000

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2

#   classification QLR2-AN-2-2

var x{1..2};


minimize f: ((x[1] + 1)^2 + x[2]^2)/2;

subject to 

   const1: x[1] >= 0;
   const2: x[1] + x[2] >= 0;
   
# x* =(0, 0)^T, y* = (1, 0)^T