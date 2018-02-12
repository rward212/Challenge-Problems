# ALGORITHM
# Create a hash of characters and their respective values
# Iterate throug hthe word and add the correct amount of points up

class Scrabble
  VALUE_HASH = {}
  %w(A E I O U L N R S T).each {|letter| VALUE_HASH[letter] = 1}
  %w(D G).each {|letter| VALUE_HASH[letter] = 2}
  %w(B C M P).each {|letter| VALUE_HASH[letter] = 3}
  %w(F H V W Y).each {|letter| VALUE_HASH[letter] = 4}
  %w(K).each {|letter| VALUE_HASH[letter] = 5}
  %w(J X).each {|letter| VALUE_HASH[letter] = 8}
  %w(Q Z).each {|letter| VALUE_HASH[letter] = 10}

  def initialize(word)
    @word = word
  end

  def self.score(word)
    tally = 0
    return tally if word == nil
    word.chars.each do |char|
      tally += VALUE_HASH[char.upcase] if ("A".."Z").include?(char.to_s.upcase)
    end
    tally
  end

  def score
    tally = 0
    return tally if @word == nil
    @word.chars.each do |char|
      tally += VALUE_HASH[char.upcase] if ("A".."Z").include?(char.to_s.upcase)
    end
    tally
  end
end

# took 29 min. to complete. Had much trial and error. Should have looked
# @ the test cases first.