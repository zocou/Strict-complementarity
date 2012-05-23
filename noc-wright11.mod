# Example of non strictly complementary constraints
# from Numerical Optimization of Nocedal & Wright 
# Example 1.2, chapter 1, page 4 :
# The objective has been modified  

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2

# classification : QQR2-MN-2-2

var x{1..2} ;


minimize f:(x[1] - 1)^2 + (x[2] - 1)^2;

subject to 

   const1: x[2] - x[1]^2 >= 0;
   const2: 2 - x[1] - x[2]  >= 0;

   