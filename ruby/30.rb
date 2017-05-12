# Surprisingly there are only three numbers that can be written as the sum of
# fourth powers of their digits:
# 1634 = 1**4 + 6**4 + 3**4 + 4**4
# 8208 = 8**4 + 2**4 + 0**4 + 8**4
# 9474 = 9**4 + 4**4 + 7**4 + 4**4
# As 1 = 14 is not a sum it is not included.
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
# Find the sum of all the numbers that can be written as the sum of fifth powers
# of their digits.

def digit_powers(n)
  a = []
  digit_array = (0..9).to_a.repeated_permutation(n + 1).to_a
  digit_array.map!{|array| array.join("")}.to_s
  digit_array.select!{|number| number.to_i == number.split("").map{|digit| digit.to_i ** n}.inject(:+)}
  digit_array.select!{|number| number.to_i != 1}.map!{|digit| digit.to_i}
  digit_array.inject(:+)
end

puts digit_powers(5)

# Answer:	443839
