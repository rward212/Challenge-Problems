# ALGORITHM
# 1. Compare the two string lengths to see which is the smallest
# 2. Compare the first letter of each strand. If different, +1 to counter
# 3. Compare the rest of the letters in both strands and +1 to counter 
#    every time there is a difference
# 4. Return counter






class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    counter = 0
    shortest_length = @strand.length > other_strand.length ? other_strand.length : @strand.length
    0.upto(shortest_length -1) do |i|
      counter += 1 if @strand[i] != other_strand[i]
    end
    counter
  end
end

#completed in ~8 mins. Got it all right n the first try.