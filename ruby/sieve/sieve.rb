class Sieve
  def initialize(n)
    @range = (2..n).to_a
    @primes = []
  end

  def primes
    remove_multiples while @range.length.positive?
    @primes
  end

  private

  def remove_multiples
    @primes << @range.shift
    @range = @range.reject { |x| (x % @primes.last).zero? }
  end
end

module BookKeeping
  VERSION = 1
end
