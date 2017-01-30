require 'pry'
class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    (2..Math.sqrt(limit)).each do |num| 
      @range -= ((num * num)..limit).step(num).to_a if @range.include?(num)
    end
    @range
  end
end

module BookKeeping
  VERSION = 1
end

