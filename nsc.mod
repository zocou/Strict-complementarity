# Example of non strictly complementary constraints
# from Wright and Orban (section 4), properties of the log-barrier
# function on degenerate nonlinear program 

# Number of variables:   1
# Number of constraints: 1
# Non strictly complementary constraints: const2

#   classification QLR2-AN-1-1

var x;


minimize f:x^2 /2;

subject to 

   const: x >= 0;
   