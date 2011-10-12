# Example of non strictly complementary constraints
# from Numerical Optimization of Nocedal & Wright 
# Example 11.2, chapter 11, page 288
# The objective has been added  

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const1, const2

# classification : QQR2-MN-2-2

var x{1..2} ;


minimize f: x[1]^2 + x[2]^2;

subject to 

   const1: x[1] >= 0;
   const2: 2*x[2]^2 + 100*x[1]/(1 + 10 * x[1]) >= 0;