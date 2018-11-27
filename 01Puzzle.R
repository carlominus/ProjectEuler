#Euler 1
x <- seq_len(999)
x

sum(ifelse(x%%3==0| x%%5==0, x, 0))
