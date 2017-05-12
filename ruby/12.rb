def triangle_number_div
  count = 0
  triangle_num = 0
  num_divisor = 0
  while (num_divisor <= 500)
    num_divisor = 0
    count += 1
    triangle_num += count
    n = 1
    while n <= Math.sqrt(triangle_num)
      if triangle_num % n == 0
        num_divisor += 2
      end
        n += 1
      end
    if Math.sqrt(triangle_num) ** 2 == triangle_num
      num_divisor -= 1
    end
  end
triangle_num
end

puts triangle_number_div

# Basically used a "cheat" to find the number of divisors which is to
# use the number of divisors up to its "Square Root" and adding
# adding two for every divisor up to its "Square Root". If it is
# a perfect square, then I would take that number from adding two
# and then subtract one. Its much faster than brute forcing.

# Answer: 76576500
