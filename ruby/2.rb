# Each new term in the Fibonacci sequence is generated by
# adding the previous two terms. By starting with 1 and 2,
# the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fibonacci(x)
  total = 0
  a = 1
  b = 2
  while b <= x
    if b % 2 == 0
    	total += b
    end
    b = b + a
    a = b - a
  end
  total
end

puts fibonacci(4000000)

# Answer: 4613732
