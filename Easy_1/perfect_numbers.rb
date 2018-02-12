# ALGORITHM
# Take a number and find all it's factors.
# Add up all those factors and compare to the number
# if sum = number, is perfect
# if sum > number, is abundant
# if sum < number, is deficient


class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 1
    factors = []
    1.upto(number/2) { |i| factors << i if number % i == 0 }
    return "deficient" if factors.sum < number
    factors.sum > number ? "abundant" : "perfect"
  end
end

# p PerfectNumber.classify(28)

# 01/19/2018 took 23 min. First attempt got 2/4 cases to pass. needed
# to stop adding the number to the sum.