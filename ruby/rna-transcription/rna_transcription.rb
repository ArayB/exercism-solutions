class Complement
  COMPLEMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(dna)
    mapped = dna.each_char.map { |chr| complement_of(chr) }.join('')
    mapped.length == dna.length ? mapped : ''
  end

  class << self
    private

    def complement_of(nucleotide)
      COMPLEMENTS[nucleotide]
    end
  end
end
