# Example of non strictly complementary constraints
# from example 1, section 1, Fast local convergence of IPM in 
#the Absence of Strict Complementarity, Z. Coulibaly, N. I. M. 
# Gould and D. Orban, work in progress 

# Number of variables:   1
# Number of constraints: 1
# Non strictly complementary constraints: const2

#   classification QLR2-AN-1-1

var x;


minimize f:x^2 /2;

subject to 

   const: x >= 0;
   