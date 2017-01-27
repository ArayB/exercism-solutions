class Pangram
  ALPHABET_LENGTH = 26

  def self.pangram?(input)
    return false if input.length < ALPHABET_LENGTH
    input = input.downcase
    ('a'..'z').all? { |letter| input.include?(letter) }
  end
end

module BookKeeping
  VERSION = 3
end
