class Phrase
  def initialize(phrase)
    @phrase = phrase.split(/[\s,]/)
                    .select { | word| word.match(/[a-zA-Z0-9]/)}
                    .map { |word| transform_word(word)}
  end

  def word_count
    hash = {}
    @phrase.each do |word|
      if word.match(/\w/)
        hash.has_key?(word) ? hash[word] += 1 : hash[word] = 1
      end
    end
    hash
  end

  def transform_word(word)
    word.gsub(/[^a-zA-Z0-9']|^'|'$/, "").downcase
  end
end
