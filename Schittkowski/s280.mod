# classification : LLR2-MN-10-20

param N := 10;

var x{1..N} := 0 ;# >= 0, := 0;
param c{i in 1..N} := sum {j in 1..N} 1/(i+j-1);
param A{i in 1..N, j in 1..N} := 1/(i+j-1);
param b{i in 1..N} := c[i];

minimize f:
sum {i in 1..N} c[i]*x[i];

subject to cons1{i in 1..N}:
sum {j in 1..N} A[i,j]*x[j] - b[i] >= 0;
# Bounds constraints
subject to bdsconstr{i in 1..N}: x[i] >= 0;

## solve;

#display x;
