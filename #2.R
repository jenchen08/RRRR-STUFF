lcg <- function() {
  w = 4901
  a = 16807
  c = 0
  m = 2 ^ 31 - 1
  l = 2018
  U <- rep(1,l)
  
  for (i in 1:l) {
    w <- (a * w + c) %% m
    U[i] = w / m
  }
  print(U[l])
}
lcg()	
