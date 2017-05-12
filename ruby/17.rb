# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out
# in words, how many letters would be used?
# Do not count spaces or hyphens. For example, 342 (three hundred and forty-two)
# contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The
# use of "and" when writing out numbers is in compliance with British usage.
def number_letters(number)

singles = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
number_word = nil
  if number == 1000
    return 'one thousand'
  elsif number >= 100 && number < 1000
    hundreds_digit = number / 100
    remainder = number % 100
    if remainder == 0
      number_word = singles[hundreds_digit - 1] + ' hundred'
    else
      number_word = singles[hundreds_digit - 1] + ' hundred and ' + "#{number_letters(remainder)}"
    end
  elsif number >= 20 && number <= 99
    tens_digit = number / 10
    remainder = number % 10
    if remainder == 0
      number_word = tens[tens_digit - 1]
    else
      number_word = tens[tens_digit - 1] + '-' + singles[remainder - 1]
    end
  elsif number >= 11 && number <= 19
    remainder = number % 10
    number_word = teens[remainder - 1]
  elsif number == 10
    return 'ten'
  else
    number_word = singles[number - 1]
  end
number_word
end

digit_array = []
i = 1
while i <= 1000
  digit_array << number_letters(i)
  i += 1
end

puts digit_array.map!{|word| word.gsub(/\s+/, "").gsub(/\-/, "")}.join.length

# Answer: 21124
