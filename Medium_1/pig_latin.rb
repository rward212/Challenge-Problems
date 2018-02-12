require "pry"
# ALGORITHM
#take a string and return it's pig latin equivalent

# IMPLICIT RULES
# if the word starts with a consonant, add all the letters before the first
# vowel to the end
# If the first vowel is "u", and there is a "q", add both to the end
# If the first vowel is "u", and there is no "q", do not add "u" to the end
# If it starts with anything else, look for first_vowel
# If the first_vowel == "u", and there is a q immediately before, add the whole segment
# If the first_vowel == "y", and next letter is vowel, add segment up to and including Y to the end

# THREE DIFF POSSIBILITIES
# word + "ay"
# ----------
# if the first letter is a vowel or is an [X or Y] + a consonant

# word[i..-1] + word[0...i] + "ay"
# --------------------------------
# 



# word[i+1..-1] + word[0..i] + "ay"
# ---------------------------------


class PigLatin
  VOWELS = %w(a e i o u)

  def self.translate(given_word)
    new_word = given_word.split(" ").map do |word|
      word.each_char.with_index do |letter, i|

      end
    end
    new_word.join(" ")
  end
end



























# class PigLatin
#   VOWELS = %w(a e i o u)

#   def self.translate(given_word)
#     new_word = given_word.split(" ").map do |word|
#       translation = word + "ay"
#       word.each_char.with_index do |letter, i|
#         if first_letter_a_vowel(i, letter) || (letter == 'y' && !VOWELS.include?(word[i + 1]))
#           break
#         elsif letter == "u" && word[i - 1] == "q" # square
#           translation = word[i+1..-1] + word[0..i] + "ay"
#           break
#         elsif letter == "y" && VOWELS.include?(word[i + 1])
#           translation = word[i+1..-1] + word[0..i] + "ay"
#           break
#         elsif VOWELS.include?(letter) # <--getting caught here yttria
#           translation = word[i..-1] + word[0...i] + "ay"
#           break
#         else
#           next
#         end
#       end
#       translation
#     end
#     new_word.join(" ")
#   end

#   def self.first_letter_a_vowel(index, char)
#     index == 0 && VOWELS.include?(char)
#   end

# end

# word + "ay"
# word[i..-1] + word[0...i] + "ay"
# word[i+1..-1] + word[0..i] + "ay"