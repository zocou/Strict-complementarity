# Hock -Schittkowski collection problem number 30
# Solution                         : x* = (1, 0, 0),
# Optimal value                    : f(x*) = 1
# Active constraints at x*         : constr1, x[1] - 1 >= 0
# NS constraint                    : x[1] - 1 >= 0
# Lagrange multipliers umax*/umin* : /0 =  

#   classification QQR2-MN-3-4

var x {1..3};

minimize obj: 
  x[1]^2 + x[2]^2 + x[3]^2;

#subject to constr1: x[1]^2 + x[2]^2 - 1 >= 0;
subject to constr1: x[1]^2 + x[2]^2 <= 1; #original version 
subject to constr2: 1 <= x[1] <= 10;
subject to constr3: -10 <= x[2] <= 10;
subject to constr4: -10 <= x[3] <= 10;

let x[1] :=  1;
let x[2] :=  1;
let x[3] :=  1;

#printf "optimal solution as starting point \n";
#let x[1] :=  1;
#let x[2] :=  0;
#let x[3] :=  0;

# display obj;

# solve;

# display x;

# display obj;

# display obj - 1;
