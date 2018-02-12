# ALGORITHM
# n = length of number - 1
# take the first number and multiply it by 8**n
# n -= 1
# go back to step 3 until you have changed all the numbers

class Octal
  def initialize(number)
    @number = number.split("")
    @n = @number.length
  end

  def to_decimal
    new_value = @number.map do |number|
      return 0 if number.to_i >= 8 || ("a".."z").include?(number.downcase)
      @n -= 1
      number.to_i*(8**@n)
    end
    new_value.sum
  end
end
