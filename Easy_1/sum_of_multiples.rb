require "pry"
class SumOfMultiples
    @@num1 = 3
    @@num2 = 5

  def initialize(*args)
    @args = args
  end

  def self.to(num)
    multiples = (1...num).select do |variable|
      variable%@@num1 == 0 || variable%@@num2 == 0
    end
    multiples.sum
  end

  def to(num)
    multiples = (1...num).select do |var|
      @args.any? {|number| var%number == 0}
    end
    multiples.sum
  end
end
