require 'pry'

class Luhn
  attr_reader :number
  def initialize(number)
    @number = number.to_s.chars.map(&:to_i)
  end

  def valid?
    checksum % 10 == 0
  end

  def checksum
    self.addends.sum
  end

  # takes an array of integers and returns a weighted array of integers
  def addends
    new_arr = @number.reverse.map.with_index do |int, i| 
      new_val = i.even? ? int : int * 2
      new_val > 10 ? new_val - 9 : new_val
    end
    new_arr.reverse
  end

  # find the last digit necessary to create a valid number
  def self.create(num)
    if new(num * 10).valid?
      num * 10
    else
      remainder = new(num * 10).checksum % 10
      (num * 10) + (10 - remainder)
    end
  end
end

