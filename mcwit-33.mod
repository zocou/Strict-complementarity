# Example from Mccormick and witzgall (section 3), logarithmic SUMT
# limits in convex programming

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: 

var x{1..2};


minimize f: x[2];

subject to 

   g1: x[1] >= 0;
   
   g2: (if x[1] < 1 then x[2] else if x[2] >= 1 then x[2] - (x[1]
   -1)^2) >= 0;   

# SNOPT 7.2-10 : Optimal solution found.
# 0 iterations, objective 0
# Nonlin evals: constrs = 2, Jac = 1.
# All bound constraints:
# Variable                 value   l-slack   u-slack      l-rc        rc      u-rc
# x[1]                   0.0e+00  Infinity  Infinity   0.0e+00   0.0e+00
# x[2]                   0.0e+00  Infinity  Infinity   0.0e+00  -1.0e+00


# All inequality constraints:
# Constraint               value   l-slack   u-slack    l-dual      dual    u-dual
# g1                     0.0e+00   0.0e+00  Infinity   0.0e+00   0.0e+00
# g2                     0.0e+00   0.0e+00  Infinity   1.0e+00   1.0e+00


# Weakly-active bound constraints:
#    Name                        Slack   Multiplier


# Weakly-active inequality constraints:
#    Name                        Slack   Multiplier
# L  g1                     0.0000e+00   0.0000e+00 

# Number of constraints violating strict complementarity: 1
