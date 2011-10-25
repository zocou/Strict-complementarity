# Example of non strictly complementary constraints
# from  section 3, example , page 12, of Facchinei et al.,  
# On the accurate identification of active constraints 
# Siam Journal on OPtimization 9:14-32, 1998

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: all

#   classification QLR2-AN-2-2

var x{1..2};


minimize f: x[1] ^2 + x[2]^2 + 4 * x[1] * x[2];

subject to 

   const1:  x[1] >= 0;
   const2:  x[2] >= 0;
   
   
# x* =(0, 0)^T, y* = (0, 0)^T