# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime(n)
  i = 2
  largest = 0
  while (i <= n)
    if (n % i == 0)
      while (n % i == 0 )
        n = n / i
        largest = i
        puts "I am n #{n}"
        puts "I am i #{i}"
        i += 1
      end
    end
    i += 1
  end
  return largest
end
puts largest_prime(600851475143)

# Answer: 6857
