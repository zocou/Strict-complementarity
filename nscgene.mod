# Example of non strictly complementary constraints

# Number of variables:   N
# Number of constraints: N
# Non strictly complementary constraints: boundsconst[1..N]

# classification : QLR2-MN-1000-1000

param N := 1000;

var x{1..N} ;


minimize f:sum {i in 1..N} x[i]^2/2;

subject to 

   boundsconst{i in 1..N}: x[i] >= 0;
  

   