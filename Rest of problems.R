#3
myfun=function(x){return(-2*x^2+2400*x)}
optimize(myfun,lower=-600,upper=600,maximum = TRUE)


#4
#NeuralNET
set.seed(4901)
library("neuralnet")
traininginput <- as.data.frame(runif(500, min=-6, max=4))
trainingoutput <- (exp(traininginput))
trainingdata <- cbind(traininginput,trainingoutput)
colnames(trainingdata) <- c("Input","Output")
net.sqre <- neuralnet(Output~Input,trainingdata, hidden=10,threshold=0.15)
print(net.sqre)
testdata <- as.data.frame((-6:4))
net.results <- compute(net.sqre, testdata)
ls(net.results)
print(net.results$net.result)
cleanoutput <- cbind(testdata,(exp(testdata)), as.data.frame(net.results$net.result))
colnames(cleanoutput) <- c("Input","Expected Output","Neural Net Output")
print(cleanoutput)print(cleanoutput)


#5
set.seed(4901)
n = 10000
sum = 0 
for(i in 1: n){
  s = runif(1)
  if(s > .95){
    sum = sum + .8
  }
  else if(s > 0.65){
    sum = sum + mean(rexp(n,1/3))
  }
  else {
    sum = sum + runif(1, min = 1, max = 2.5)
  }
}
t<-mean(sum/n)
print(t)

#6
set.seed(4901)
n=10000
s=10
(RollDie = replicate(3, sample(1:6, n, rep = T)))
sum(RollDie[,1] + RollDie[,2] + RollDie[,3] == s )/ n


#7
set.seed(4901)
Sum = 0
n=10000
for(i in 1: n){
  x = runif(1,min = 0, max=60)
  y = runif(1,min = 0, max=60)
  if(abs(x-y) <= 15)
    Sum = Sum + 1 
}

print(Sum/n))


#10

set.seed(4901)
n = 10000
count = 0
for(i in 1:n){
  x = sample (c ("M","W","M","W","M"))
  if (all (x [c (1, 3, 5)] == "M")) 
    count = count +1
}

print(count/n)


