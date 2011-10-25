# Example of non strictly complementary constraints
# from  section 4, example 4.9, page 257, of Izmailov and  solodov.,  
# Examples of dual behaviour of Newton-type methods on 
# optimization problems with degenerate constraints

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: const2

#   classification QLR2-AN-2-2

var x{1..2};


minimize f: (x[2]- 1) ^2/2;

subject to 

   const1:  x[1] >= 0;
   const2:  x[2] - 1 >= 0;
   
   
# x* =(x, 1)^T, x >= 0; y* = (0, 0)^T