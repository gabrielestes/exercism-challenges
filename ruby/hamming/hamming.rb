class Hamming
  def self.compute(nuc_one, nuc_two)
    raise ArgumentError if nuc_one.length != nuc_two.length

    nucleotide_pairs = nuc_one.split('').zip(nuc_two.split(''))
    nucleotide_pairs.reject { |x, y| x == y }.count
  end
end

module BookKeeping
  VERSION = 3
end
