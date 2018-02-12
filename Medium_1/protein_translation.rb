require "pry"
# ALGORITHM
# take a codon string and return the corresponding Protein string
# make a protein hash where the key is the protein and the value is an
# array of codons
# iterate through each value and return the key for which value contains
# the given string

# ALGORITHM
# take a string of codons and return an array of their respective proteins
# take the string and split into an array of strings.
# Traverse the array of strings and return the proper protein key for each
# codon

class InvalidCodonError < StandardError; end

class Translation
  HASH = {"Methionine" => %w(AUG), 
    "Phenylalanine" => %w(UUU UUC), 
    "Leucine" => %w(UUA UUG), 
    "Serine" => %w(UCU UCC UCA UCG), 
    "Tyrosine" => %w(UAU UAC),
    "Cysteine" => %w(UGU UGC),
    "Tryptophan" => %w(UGG),
    "STOP" => %w(UAA UAG UGA)
  }


  def self.of_codon(given_codon)
    result = ""
    HASH.each do |protein, codons|
      codons.each do |codon|
        result = protein if codon == given_codon
      end
    end
    result
  end

  def self.of_rna(string)
    val = string.scan(/.../).flatten.map do |given_codon|
      result = HASH.select { |protein, codons| codons.include?(given_codon) }.keys.join
      raise InvalidCodonError if result == ""
      result
    end
    val.include?("STOP") ? val[0...val.index("STOP")] : val
  end
end
