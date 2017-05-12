# The sum of the squares of the first ten natural numbers is,
# 1 ** 2 + 2 ** 2 + ... + 10 ** 2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)**2 = 55 ** 2 = 3025
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

def sum_square_difference(n)
  sum = (1..n).to_a.map{ |e| e * e}.reduce(:+)
  square = (1..n).to_a.reduce(:+) ** 2
  difference = square - sum
end

puts sum_square_difference(100)

# Answer: 25164150
