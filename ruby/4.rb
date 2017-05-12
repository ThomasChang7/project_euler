# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit
# numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
  number_array = (100..999).to_a
  number_array.permutation(2).map{ |perm| perm.inject(:*) }.select{ |product| product.to_s == product.to_s.reverse}.map{ |num| num.to_i }.max
end

puts largest_palindrome

# Answer: 906609
