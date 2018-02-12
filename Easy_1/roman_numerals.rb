require 'pry'
# Take a number and convert it to a roman numeral
# ALGORITHM
# need to find out how many of each kind of symbol I need
# take number and divide it by 1000. add your answer to a hash
# take number and divide it by 500. add your answer to a hash
# take number and divide it by 100. add your answer to a hash
# take number and divide it by 50. add your answer to a hash
# take number and divide it by 10. add your answer to a hash
# take number and divide it by 5. add your answer to a hash
# take the remainder and add it to the hash


class Integer
  NUMERAL_VALUES = {
    "M" => 1000, 
    "CM" => 900, 
    "D" => 500, 
    "CD" => 400, 
    "C" => 100, 
    "XC" => 90,
    "L" => 50, 
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I"=> 1,
  }
  ORDER_ARRAY = NUMERAL_VALUES.keys.reverse

  def to_roman
    new_string = ""
    number = self
    NUMERAL_VALUES.each do |key, value|
      if number/value > 0
        new_string << key*(number/value)
      end
      number %= value
    end
    new_string
  end
end

# completed on 01/30/2017. Spent a long time to solve. Once I watched the
# instructional video and saw that they added the CM, CD, XC, XL, IX, IV
# elements to the hash, then I was able to quickly solve the problem.