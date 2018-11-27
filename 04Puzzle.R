#euler 4
m = 999:100
n = m
max = 0
palindrome = 0
for (i in m){
  for (j in 999:100){
    product = i*j
    original = product
    if(product < palindrome){
      next
    }
    reversed = 0
    while(product!=0){
      digit = product%%10
      reversed = reversed*10+digit
      product = as.integer(product/10)
    }
    if(original == reversed & original > palindrome){
      palindrome = original
    }
  }
  if(original == reversed){
    break
  }
  
}
palindrome
