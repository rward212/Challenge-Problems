# compare the number of each letter in word1 with the number in word2
# compare the number of each letter in word2 with the number in word1
# if the same number is true in each case, then the word is an anagram



class Anagram
  def initialize(word)
    @word = word.downcase.chars

  end

  def match(possibilities)
    possibilities.select do |possibility|
      letters = possibility.downcase.chars
      letters != @word && same_letters(letters, @word)
    end
  end

  private

  def same_letters(arr1, arr2)
    hash1 = {}
    hash2 = {}
    arr1.each { |char| hash1.has_key?(char) ? hash1[char] += 1 : hash1[char] = 1 }
    arr2.each { |char| hash2.has_key?(char) ? hash2[char] += 1 : hash2[char] = 1 }
    hash1 == hash2
  end
end





