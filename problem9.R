set.seed(4901)
n=10000
sum = 0
mean = 100 * .5 #Because we want heads
sd = sqrt(100*.5*.5)
z = (60-mean)/sd

for(i in 1: n){
  sum = sum + ((1-pnorm(z))*(20)-(pnorm(z)*(1)))
}
print(sum/n)

