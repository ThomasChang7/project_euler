# Let d(n) be defined as the sum of proper divisors of n (numbers less than n
# which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and
# each of a and b are called amicable numbers.
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55
# and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71
# and 142; so d(284) = 220.
# Evaluate the sum of all the amicable numbers under 10000.

def divisor_sum(num)
  if num == 0
    return 0
  elsif num == 1
    return 1
  end
  (1...num).select{ |number| num % number == 0}.inject(:+)
end

sum = 0
j = 0
for j in (1...10000)
  quotient_sum = divisor_sum(j)
  sum += j if divisor_sum(quotient_sum) == j && j != quotient_sum
end

puts sum

# Answer: 31626
