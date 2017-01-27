class Pangram
  def self.pangram?(input)
    return false if input.length < 26
    input.downcase!
    ('a'..'z').select { |letter| !input.include?(letter) }.empty?
  end
end

module BookKeeping
  VERSION = 3
end
