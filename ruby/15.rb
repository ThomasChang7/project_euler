# Starting in the top left corner of a 2×2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.

puts (1..40).inject(:*) / (((1..20).inject(:*))*((1..20).inject(:*)))

# Answer: 137846528820
