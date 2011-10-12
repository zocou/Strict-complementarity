# Example from Mccormick and witzgall (section 8), logarithmic SUMT
# limits in convex programming

# Number of variables:   2
# Number of constraints: 2
# Non strictly complementary constraints: 

# classification : OLR2-MN-2-2

var x{1..2};


minimize f: (((x[1] - 1)^2 + x[2]^2)^(1/2) + ((x[1] + 1)^2 +
x[2]^2)^(1/2) - 2)^2;

subject to 

   g1: x[1] >= 0;
   g2: x[2] >= 0; 

# SNOPT 7.2-10 : Optimal solution found.
# 0 iterations, objective 0
# Nonlin evals: obj = 2, grad = 1.
# All bound constraints:
# Variable                 value   l-slack   u-slack      l-rc        rc      u-rc
# x[1]                   0.0e+00  Infinity  Infinity   0.0e+00   0.0e+00
# x[2]                   0.0e+00  Infinity  Infinity   0.0e+00   0.0e+00


# All inequality constraints:
# Constraint               value   l-slack   u-slack    l-dual      dual    u-dual
# g1                     0.0e+00   0.0e+00  Infinity   0.0e+00   0.0e+00
# g2                     0.0e+00   0.0e+00  Infinity   0.0e+00   0.0e+00


# Weakly-active bound constraints:
#    Name                        Slack   Multiplier


# Weakly-active inequality constraints:
#    Name                        Slack   Multiplier
# L  g1                     0.0000e+00   0.0000e+00 
# L  g2                     0.0000e+00   0.0000e+00 

# Number of constraints violating strict complementarity: 2

   