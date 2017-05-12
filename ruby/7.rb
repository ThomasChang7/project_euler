# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
# What is the 10 001st prime number?

# this determines if a number is prime
def is_prime?(n)
  i = 2
  while i < n
    if n == 2
      return true
    elsif n % i == 0
      return false
    end
    i += 1
  end
  true
end

# this determines the nth prime number

def prime_number(n)
  prime_array = []
  count = 1
  until prime_array.length == n
    if count == 1
      prime_array << 2
      count += 2
    elsif is_prime?(count) == true
      prime_array << count
      count += 2
    else
      count += 2
    end
  end
    prime_array.last
end

puts prime_number(10001)

# Answer: 104743

# this would be much faster though
# require 'prime'
# prime_array = []
# i = 0
# until prime_array.length > 10000
#   prime_array << i if i.prime?
#   i += 1
# end
# puts prime_array.last
