# Example of non strictly complementary constraints
# from  section 4, example 4.21, page 261, of Izmailov and  solodov.,  
# Examples of dual behaviour of Newton-type methods on 
# optimization problems with degenerate constraints

# Number of variables:   3
# Number of constraints: 2
# Non strictly complementary constraints: all

#   classification QOR2-AN-3-2

var x{1..3};


minimize f: (x[1]^2 + x[2]^2 + x[3]^2)/2;

subject to 

   const1:  sin(x[1]) + sin(x[2]) + sin(x[3]) >= 0;
   const2:  x[1] + x[1]^2 + x[3]  + sin(x[1]*x[3]) >= 0;
   
   
# x* =(0, 0, 0)^T, x >= 0; y* = (0, 0)^T