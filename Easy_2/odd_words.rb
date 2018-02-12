require "pry"
# ALGORITHM
# traverse the array
  # if the character is a letter, and the reverse_switch is off, add it to the new array. 
  # if the character is a letter and the reverse switch is on, add it 
  # to the beginning temp array.
  # if the character is a space, and the last element in the new array
  # is a char, add the space to the array, flick the reverse_switch to on, 
  # addthe temp_array to the new array, and empty the temp array


# Test cases
test_string1 = ["I", " ", "a", "m", " ", "R", "o", "g", "e", "r", " ", "W", "a", "r", "d", "."]
test_string2 = "Hello my name is Roger."
test_string3 = "Hello  my  name  is  Roger. "
test_string4 = "Hello"
test_string5 = ""

def reverse_odd_words(array)
  new_array = []
  temp_array = []
  word_number = 0
  array.each_with_index do |char, i|

    if ("a".."z").include?(char.downcase)
      word_number.odd? ? temp_array.unshift(char) : new_array << char
      # binding.pry
    else # if the char is a space
      new_array += temp_array
      if new_array[-1] != " "
        new_array << char
        word_number += 1
        temp_array = []
      end

    end
  end
  new_array.join
end

puts reverse_odd_words(test_string1)
# puts reverse_odd_words(test_string2)
# puts reverse_odd_words(test_string3)
# puts reverse_odd_words(test_string4)
# puts reverse_odd_words(test_string5)









  # result = []
  # new_array = array.select { |char| char != "."}
  # word_number = 1
  # has_space = false
  # new_array.each do |char|
    
  #   if ("a".."z").include?(char.downcase)
  #     if word_number.odd? ?

  #     else

  #     end
  #   elsif char == " " && has_space == false
  #     word << char
  #     has_space = true
  #   end
  #   result[-1] == " " ? word_number += 1 : has_space = false
  # end
  # result << "."