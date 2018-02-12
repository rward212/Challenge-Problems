require "pry"
# Algorithm
# Take the numbers and sort them
# define index of first in series (FIRST) as the first number in the string
# define index (LAST) of last in series as FIRST + n
# if LAST is less than string's length, add the covered string segment to an array
# FIRST += 1
# LAST += 1

class Series
  def initialize(numbers)
    @numbers = numbers.chars.map(&:to_i)
  end

  def slices(n)
    throw ArgumentError if n > @numbers.length
    result = []
    first = 0
    loop do
      last = (first + n - 1)
      break if last == @numbers.size
      result << @numbers[first..last] 
      first += 1
    end
    result
  end
end