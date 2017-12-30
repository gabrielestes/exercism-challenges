class Complement

  @dna_rna = {
              'C' => 'G',
              'G' => 'C',
              'T' => 'A',
              'A' => 'U'
  }

  def self.of_dna(strand)
    @strand = strand.split('')
    is_dna_valid?
    @strand.length > 0 ? transcribe_dna : @strand.join
  end

  def self.is_dna_valid?
    @strand.clear if @strand.join.match(/[^CGTA]/)
  end

  def self.transcribe_dna
    rna = []
    @strand.each do |gene|
      rna << @dna_rna[gene]
    end
    rna.join
  end
end