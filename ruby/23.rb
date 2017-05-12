# A perfect number is a number for which the sum of its proper divisors is
# exactly equal to the number. For example, the sum of the proper divisors of 28
# would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
# A number n is called deficient if the sum of its proper divisors is less than
# n and it is called abundant if this sum exceeds n.
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
# number that can be written as the sum of two abundant numbers is 24. By
# mathematical analysis, it can be shown that all integers greater than 28123
# can be written as the sum of two abundant numbers. However, this upper limit
# cannot be reduced any further by analysis even though it is known that the
# greatest number that cannot be expressed as the sum of two abundant numbers is
# less than this limit.
# Find the sum of all the positive integers which cannot be written as the sum
# of two abundant numbers.

def perfect_num?(n)
  if n == 1
    return "deficient"
  end
  div_array = []
  (1...n).each do |x|
    if n % x == 0
      div_array << x
    end
  end
  sum = div_array.inject(:+)
  if sum < n
    return "deficient"
  elsif sum == n
    return "perfect"
  else
    return "abundant"
  end
end

def abundant_sums
total_sum = (1..28123).to_a
abundant = (1..28123).select{|num| perfect_num?(num) == "abundant"}
abundant_sum = []
abundant.each do |x|
  abundant.each do |y|
    z = x + y
  if z <= 28123
    abundant_sum << z
  end
end
end
(total_sum - abundant_sum.uniq).inject(:+)
end
puts abundant_sums

# Answer: 4179871
