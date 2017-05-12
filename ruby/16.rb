# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 21000?

two_power = 2 ** 1000
power_digit_sum = two_power.to_s.split("").map{|n| n.to_i}.inject(:+)
puts power_digit_sum

# Answer: 1366
