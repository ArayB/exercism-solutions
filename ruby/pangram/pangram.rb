class Pangram
  def self.pangram?(input)
    input = input.downcase
    ('a'..'z').all? { |letter| input.include?(letter) }
  end
end

module BookKeeping
  VERSION = 3
end
