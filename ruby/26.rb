# A unit fraction contains 1 in the numerator. The decimal representation of the
# unit fractions with denominators 2 to 10 are given:
# 1/2	= 	0.5
# 1/3	= 	0.(3)
# 1/4	= 	0.25
# 1/5	= 	0.2
# 1/6	= 	0.1(6)
# 1/7	= 	0.(142857)
# 1/8	= 	0.125
# 1/9	= 	0.(1)
# 1/10	= 	0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be
# seen that 1/7 has a 6-digit recurring cycle.
# Find the value of d < 1000 for which 1/d contains the longest recurring cycle
# in its decimal fraction part.

require 'prime'

prime_array = (1..999).to_a.select {|n| n.prime?}.to_a

def cycle_length(x)
  i = 1
  while (((10 ** i) - 1) % x) != 0
    i += 1
  end
   i
end

repeating = Hash.new
prime_array.each do |n|
  if n % 2 == 0 || n % 5 == 0
    next
  end
  repeating[cycle_length(n)] = n
end

puts repeating.max

# Answer: 983
