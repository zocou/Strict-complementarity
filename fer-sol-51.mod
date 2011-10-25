# Example of non strictly complementary constraints
# from  section 5, example 1, page 70, of Fernandez and  solodov.,  
# Stabilized sequential quadratic programming for optimization and a 
# stabilized Newton-type method for variational problems
# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2, const3

#   classification QLR2-AN-2-3

var x{1..2};


minimize f: x[1]*x[2] - x[2]^2/2;

subject to 
   const1:  - x[2]^2  >= 0;   
   const2:  2 * x[1] - x[2] >= 0;
   const3:  - x[1] + 2 * x[2] >= 0;
   
   
# x* =(0, 0)^T, x >= 0; y* = (0, 0)^T