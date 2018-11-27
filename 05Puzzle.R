#euler 5
numberlist <- 2:20
primefactors <- c(1)
i=2
for(i in numberlist){
  tofactor <- i
  for(j in primefactors){
    if(tofactor%%j == 0){
      tofactor <- tofactor/j
    }
  }
  primefactors <- c(primefactors, tofactor)
}
primefactors
product = 1
for(i in primefactors){
  product = product*i
}
product
