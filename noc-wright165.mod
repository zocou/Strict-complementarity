# Example of non strictly complementary constraints
# from Numerical Optimization of Nocedal & Wright 
# Example of  chapter 16, page 467 :

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const1, const2

# classification : QLR2-MN-2-2

var x{1..2} ;


minimize f: x[1]^2 + ( 1 + x[2])^2;

subject to 

   const1: x[1] >= 0;
   const2: 1 + x[2] >= 0;

   