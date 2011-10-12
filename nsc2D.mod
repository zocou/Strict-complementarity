# Example of non strictly complementary constraints
#  from Wright and Orban (section 4), properties of the log-barrier
#  function on degenerate nonlinear program 

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2

# classification : QLR2-MN-2-2

var x{1..2} ;


minimize f:(x[1]^2 + x[2]^2)/2;

subject to 

   const1: x[1] - 1 >= 0;
   const2: x[2]  >= 0;

   