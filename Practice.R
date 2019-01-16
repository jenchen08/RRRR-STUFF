install.packages("plotrix")
library(plotrix)
n=100
x=runif(n,-1,1)
y=runif(n,-1,1)
plot(x,y, asp = 1, xlim = c(-1,1))
draw.circle(0,0,1,nv=1000,border = NULL, col=NA, lty=1, lwd=1)


mc.pi=function(n){
  x=runif(n,-1,1)
  y=runif(n,-1,1)
  m=sum(x^2+y^2<1)
  4*m/n
}

