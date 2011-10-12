# Example of non strictly complementary constraints
# from Numerical Optimization of Nocedal & Wright 
# Exercice 2.1, chapter 1, page 4 :


# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const1, const2

# classification : QLR2-MN-2-2

var x{1..2} ;


minimize f: 10*(x[2] - x[1]^2)^2 + (1 - x[1])^2;

subject to 

   const1: 1 - x[1] >= 0;
   const2: 1 - x[2] >= 0;

   