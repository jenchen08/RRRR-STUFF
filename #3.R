# 8x8 Laplacian Matrix 
A <- matrix(c(4,0,-1,-1,0,0,-1,-1,0,3,0,-1,-1,-1,0,0,-1,0,4,0,-1,0,-1,-1,-1,-1,0,3,0,-1,0,0,0,-1,-1,0,3,-1,0,0, 0,-1,0,-1,-1,3,0,0, -1,0,-1,0,0,0,3,-1,-1,0,-1,0,0,0,-1,3), ncol= 8, byrow=TRUE)
u <- c()
v <- c()

#Arbitrary Vector
u[[1]] <- c(1,2,3,4,5,6,7,8)
#iterations to find max eigenvalue
for (i in 1:1000) {
  v[[i]] <- A %*% u[[i]]
  u[[i + 1]] <- v[[i]]/max(v[[i]])
  print(max(v[[i]]))
}
# Graph of convergence of the max eigenvalue 
change <- matrix(unlist(v), nrow = 8)
plot(apply(change, 2, max), type = "b")