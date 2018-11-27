#euler 12

trinum <- 0
ctr = 1
trinumset <- c()
divisors = 0
while(divisors<500){
  trinum <- trinum + ctr
  trinumset <- c(trinumset, trinum)
  factors <- c()
  numlist = 2:as.integer(trinum^.5)
  p <- 2
  factored <- trinum
  matrinumfactor = 0
  while(is.infinite(p)==FALSE){
    if(factored%%p==0){
      factored = factored/p
      factors <- c(factors, p)
      numlist = 2:as.integer(factored^.5)
      matrinumfactor = p
      p <- 2
    }
    else {
      iscompound <- numlist%%p==0 & numlist>p
      numlist <- ifelse(iscompound, 0, numlist)
      numlist <- numlist[numlist!=0]
      p <- min(numlist[numlist>p])
    }
    if(is.infinite(p)==TRUE & factored != 1){
      factors <- c(factors, factored)
    }
    
  }
  eset <- c()
  oldi = 0
  for(i in factors){
    if(oldi == i){
      next
    }
    e = 0
    for(j in factors){
      if(i ==j){
        e = e+1
      }
    }
    eset <- c(eset, e)
    oldi <- i
  }
  divisors <- prod(eset+1)
  ctr = ctr + 1
}
trinum
divisors
