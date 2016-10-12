module BookKeeping
  VERSION = 2
end

class Raindrops
  SOUNDS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(num)
    res = SOUNDS.select { |key| (num % key).zero? }.values.join('')
    res.empty? ? num.to_s : res
  end
end
