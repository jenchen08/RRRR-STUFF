A = matrix(c(4,0,-1,-1,0,0,-1,-1,
             0,3,0,-1,-1,-1,0,0,
             -1,0,4,0,-1,0,-1,-1,
             -1,-1,0,3,0,-1,0,0,
             0,-1,-1,0,3,-1,0,0,
             0,-1,0,-1,-1,3,0,0,
             -1,0,-1,0,0,0,3,-1,
             -1,0,-1,0,0,0,-1,3),8,8,byrow=TRUE)

initialx = c(1,0,0,0,0,0,0,0)
threshold = 1e-22

powerm_nr = function(A, initialx, threshold)
{
  m0 = x0[which.max(abs(x0))]
  x1 = A %*% (x0 / m0)
  m1 = x1[which.max(abs(x1))]
  cat(m1, '\n')
  while(abs(m1 - m0) > thresh)
  {
    m0 = m1
    x1 = A %*% (x1 / m1)
    m1 = x1[which.max(abs(x1))]
  }
  m1
  print(m1)
  }

