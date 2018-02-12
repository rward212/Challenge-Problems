class Trinary
  def initialize(number)
    @number = number.split("")
    @n = @number.length
  end

  def to_decimal
    new_value = @number.map do |number|
      return 0 if number.to_i >= 8 || ("a".."z").include?(number.downcase)
      @n -= 1
      number.to_i*(3**@n)
    end
    new_value.sum
  end
end
