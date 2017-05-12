# The Fibonacci sequence is defined by the recurrence relation:
# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.
# What is the index of the first term in the Fibonacci sequence to contain 1000
# digits?

fib_array = []
term = 0
current_number = 1
previous_number = 1
fn = 1
until fib_array.last.to_s.length == 1000
  if fib_array.empty?
    fib_array << previous_number
    term += 1
  end
  fib_array << current_number
  fn = current_number
  current_number += previous_number
  previous_number = fn
  term += 1
end

puts term

# Answers: 4782
