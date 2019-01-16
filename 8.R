set.seed(4901)
n = 10000
sum = 0
sum1 = 0

for (i in 1:n) {
  u = runif(1, min = 18, max = 25)
  y = (53 - u)
  sum = y * rnorm(1, mean = 1200, sd = 300)
  loss = sum - 20000
  
  if (loss < 0) {
    sum1 = sum1 + 1
    
  }
}
print(sum1 / n)
