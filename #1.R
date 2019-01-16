library(lpSolve)
f.obj <- c(-1,0,0)
f.con <- matrix (c(-1,1,-1,-1,-1,-1,-1,2,1), nrow=3, byrow=TRUE)
f.dir <- c("<=", "<=", "<=")
f.rhs <- c(-1, -3, 4)
lp ("max", f.obj, f.con, f.dir, f.rhs)
lp ("max", f.obj, f.con, f.dir, f.rhs)$solution
