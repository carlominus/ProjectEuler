#euler10

numlist <- 2:2000000
x <- 1

while(x<=length(numlist)){
  i <- numlist[x]
  numlist <- numlist[numlist%%i!=0 | numlist==i]
  x = x+1
}
numlist
sum(as.numeric(numlist))
