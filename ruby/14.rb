# The following iterative sequence is defined for the set of positive integers:
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# note: Once the chain starts the terms are allowed to go above one million.

def collatz
starting_number = 2
current_number = starting_number
longest_chain = nil
current_chain = []
  while starting_number <= 1000000
    while current_chain.last != 1
      if current_number % 2 == 0
        current_chain << current_number
        current_number = current_number / 2
      elsif current_number % 2 == 1
        current_chain << current_number
        current_number = 3 * current_number + 1
      end
    end
    if longest_chain == nil
      longest_chain = current_chain
    elsif current_chain.length > longest_chain.length
      longest_chain = current_chain
    end
    current_chain = []
    starting_number += 1
    current_number = starting_number
  end
  longest_chain[0]
end

puts collatz

# Answer: 837799
