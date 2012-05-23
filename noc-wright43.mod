# Example of non strictly complementary constraints
# from Numerical Optimization of Nocedal & Wright 
# Exercice 4.3 : Rosenbrock function in N dimension, chapter4, page 98

# Number of variables:   2*N
# Number of constraints: 2*N
# Non strictly complementary constraints: const{1..2N}

# classification : QLR2-MN-100-100

param N := 50;
var x{1..2*N} ;


minimize f: sum{i in 1..N} (10 * (x[2*i] - x[2*i - 1]^2)^2 + (1 -
x[2*i - 1])^2);  

subject to 
   const{i in 1..2*N}: 1 - x[i] >= 0;
   

   