#euler7: 10001st prime
primes <- c(2)
#start with a 2
x <- 3
#check if prime
while(length(primes)<10001){
  iscompound = 0
  factors <- 2
  for(i in primes){
    if(x%%i == 0){
      iscompound= 1
      break
    }
  }
  if(iscompound == 0){
    primes <- c(primes, x)}
  x <- x+1
}
length(primes)
max(primes)
