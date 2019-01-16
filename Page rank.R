set.seed(4901)
M = cbind(c(0,0.5,0,0), c(0.3333, 0, 0, 0.5), c(0.3333, 0, 0, 0.5), c(0.3333, 0.5, 1,0))
v <- c()

r <- c()
#intital vector
r[[1]] <- c(0.25,0.25,0.25,0.25) 

# Powermethod 
for (i in 1:100) {
  # %*% is matrix multiplication 
  v[[i]] <- t(M) %*% r[[i]]
  r[[i + 1]] <- v[[i]]
  print(v[i])
}
