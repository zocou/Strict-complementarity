# Example of non strictly complementary constraints
# from  section 4, example 3, page 15, of Facchinei et al.,  
# On the accurate identification of active constraints 
# Siam Journal on OPtimization 9:14-32, 1998

# Number of variables:   5
# Number of constraints: 3
# Non strictly complementary constraints: all

#   classification OOR2-AN-5-3

var x{1..5};


minimize f: (x[1] - x[2])^2 + (x[3] - 1)^2 + (x[4] - 1)^4 + (x[5] - 1)^6;

subject to 

   const1:  x[1]^2 * x[4] + sin(x[4] - x[5]) - 1 >= 0;
   const2:  x[2] + x[3]^4 * x[4]^2 - 2 >= 0;
   const3:  1 - x[2] >= 0;
   
# x* =(1, 1, 1, 1, 1)^T, y* = (0, 0, 0)^T