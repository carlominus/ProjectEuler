#euler 2
seq = c(1, 2)
x=2
num = 1
while(seq[x]<4000000){
  num = seq[x-1] + seq[x]
  if(num >4000000){
    break
  }
  seq = c(seq, num)
  x = x+1
}
sum(ifelse(seq%%2==0, seq, 0))