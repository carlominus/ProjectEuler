#euler 9

x <- 2:1000
x <- x[x%%2!=0]
ls<-c()
for(i in 1:1000){
  for(j in 1:1000){
    k <- c(i^2+j^2)^0.5
    if(k%%1==0){
      sum = i+j+k
      if(i+j+k == 1000){
        print(i*j*k)
        break
      }
    }
  }
  if(i+j+k == 1000){
    break
  }
}


