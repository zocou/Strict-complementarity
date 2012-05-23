# Example of non strictly complementary constraints
# from Numerical Optimization of Nocedal & Wright 
# Example 12.7, chapter 12, page 331 :

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const1

# classification : LQR2-MN-2-2

var x{1..2} ;


minimize f: x[1];

subject to 

   const1: x[2] >= 0;
   const2: 1 - (x[1] - 1)^2 - x[2]^2 >= 0;

   