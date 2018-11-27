#euler 3
x <- 600851475143
factors <- c()

numlist = 2:as.integer(x^.5)
p <- 2
factored <- x
maxfactor = 0
while(is.infinite(p)==FALSE){
  if(factored%%p==0){
    factored = factored/p
    factors <- c(factors, p)
    numlist = 2:as.integer(factored^.5)
    maxfactor = p
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

max(factors)
