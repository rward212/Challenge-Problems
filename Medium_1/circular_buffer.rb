class CircularBuffer
  def initialize(length)
    @buffer = Array.new(length, nil)
    @oldest = 0
    @youngest = -1
  end

  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end

# reads the oldest value, removes it from the list, and updates @oldest pointer
  def read
    raise BufferEmptyException if @buffer.all? { |val| val == nil }
    @buffer << nil
    @buffer[@oldest], @buffer[-1] = @buffer[-1], @buffer[@oldest]
    @oldest = (@oldest + 1) % (@buffer.size - 1) #<--problem here!
    @buffer.pop
  end

  # Write val to the next value
  # update @youngest pointer
  def write(val)
    if val != nil
      raise BufferFullException if @buffer.all? { |val| val != nil }
      @youngest = increment_youngest(@buffer.size)
      @buffer[@youngest] = val
    end
  end

# overwrite the oldest value with the new value
# update the oldest and youngest values
  def write!(val)
    if val != nil
      if @buffer[@youngest..-1].any? { |val| val == nil }
        write(val)
      else
        @buffer[@oldest] = val
        @youngest = @oldest
        @oldest = increment_oldest(@buffer.size)
      end
    end
  end

  def clear
    @buffer.map! { |val| val = nil}
    @oldest = 0
    @youngest = -1
  end

  def increment_youngest(size)
    (@youngest + 1) % size
  end

  def increment_oldest(size)
    (@oldest + 1) % size
  end
end





