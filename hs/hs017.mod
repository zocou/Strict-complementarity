# Hock -Schittkowski collection problem number 17
# Solution                         : x* = (0, 0),
# Optimal value                    : f(x*) = 1
# Active constraints at x*          : {1, 2}
# Lagrange multipliers umax*/umin* : 2/0 =  

#   classification QQR2-MN-2-4

var x {1..2};

minimize obj: 
  100*(x[2] - x[1]^2)^2 + (1 - x[1])^2
  ;

subject to constr1: -x[1] + x[2]^2 >= 0;
subject to constr2:  x[1]^2 - x[2] >= 0;
subject to constr3: -1/2 <= x[1] <= 1/2;
subject to constr4: x[2] <= 1;

let x[1] := -2;
let x[2] :=  1;

#printf "optimal solution as starting point \n";
#let x[1] := 0;
#let x[2] := 0;

# solve;

# display x;

# display obj;

# display obj - 1;
