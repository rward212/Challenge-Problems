
class SecretHandshake  
  attr_reader :binary_number
  MOVES = ["wink", "double blink", "close your eyes", "jump"]

  def initialize(binary_number)
    # @binary_number need to be an array of "1" or "0" strings
    if binary_number.to_s.chars.all? {|val| val == "1" || val == "0" }
      @binary_number = binary_number.to_s.chars
    else
      @binary_number = to_binary(binary_number)
    end
  end

  def commands
    secret_handshake = []
    if @binary_number[0] == "1" && @binary_number.length > 4
      @binary_number[1..-1].reverse_each.with_index do |val, i|
        secret_handshake.unshift(MOVES[i]) if val.to_s == "1" 
      end   
    else 
      first_num = @binary_number.length > 4 ? 1 : 0
      @binary_number[first_num..-1].reverse_each.with_index do |val, i|
        secret_handshake << MOVES[i] if val.to_s == "1" 
      end   
    end
    secret_handshake
  end

  # takes an integer and returns a binary representation
  def to_binary(number)
    return ["0"] unless number.to_s.chars.all? { |char| ("0".."9").cover?(char) }
    bin = []
    new_num = number
    while new_num != 0
      bin << new_num.divmod(2)[1]
      new_num = new_num.divmod(2)[0]
    end
    bin.map(&:to_s).reverse
  end
end