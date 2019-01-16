set.seed(4901)
n = 10000
sum = 0 
for(i in 1: n){
  s = runif(1)
  if(s > .95){
    sum = sum + .8
  }
  else if(s < 0.3){
    sum = sum + mean(rexp(n,1/3))
  }
  else {
    sum = sum + runif(1, min = 1, max = 2.5)
  }
}
t<-(sum/n)
print(t)