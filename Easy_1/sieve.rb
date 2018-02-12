class Sieve
  def initialize(num)
    @given_num = num
  end

  def primes
    possibilities = {}
    2.upto(@given_num) { |int| possibilities[int] = "unmarked"}

    2.upto(@given_num) do |num|
      next if possibilities[num] == "marked"
      multiple = num**2
      possibilities[multiple] = "marked"
      while multiple < @given_num
        multiple += num
        possibilities[multiple] = "marked"
      end
    end
    possibilities.select {|num, status| status == "unmarked"}.keys
  end
end