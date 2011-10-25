# Example from lecture note #08 of MS&E211 of Yinyu Ye
# from Stanford university 
# http://www.stanford.edu/class/msande211/lecture08.pdf 

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints : g1, g2

#   classification QLR2-MN-2-2

var x{1..2};

minimize f: ((x[1] - 1)^2 + (x[2] - 1)^2)/2;
subject to 

   g1: 2 - x[1] - x[2] >= 0;
   
   g2: x[1] - 1 >= 0;

# nsc solution : x*=(1, 1) and y* =(0, 0)
