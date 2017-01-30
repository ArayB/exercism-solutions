class Pangram
  ENGLISH_ALPHABET = ('a'..'z').freeze

  def self.pangram?(sentence)
    sentence = sentence.downcase
    ENGLISH_ALPHABET.all? { |letter| sentence.include?(letter) }
  end
end

module BookKeeping
  VERSION = 3
end
