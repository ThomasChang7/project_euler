# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 3 ** 2 + 4 ** 2 = 9 + 16 = 25 = 5 ** 2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

product = 0
(1..1000).each do |a|
  (1..1000).each do |b|
    (1..1000).each do |c|
      if a + b + c == 1000 && (a ** 2) + (b ** 2) == (c ** 2)
        product = a * b * c
      end
    end
  end
end
puts product

# Answer: 31875000
