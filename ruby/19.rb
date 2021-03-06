# You are given the following information, but you may prefer to do some
# research for yourself.
# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century
# unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)?

require 'date'
date_start = Date.parse('1st Jan 1901')
date_end = Date.parse('31st Dec 2000')
d = date_start
sundays = 0
while d != date_end
  if d.wday == 0 && d.mday == 1
    sundays += 1
  end
  d += 1
end

puts sundays

# Answer: 171
