# Example of non strictly complementary constraints


# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2

# classification : OOR2-MN-2-2

var x{1..2};


minimize f: exp(x[1]^2)  + exp(x[2]^2);

subject to 

   const1: x[1] * exp(x[2]^2) >= 0;
   const2: x[2] * cos(x[1])  >= 0;

   