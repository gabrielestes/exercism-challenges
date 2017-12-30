class Hamming
  def initialize
  end

  def compute(nuc_one, nuc_two)
    unless nuc_one.length == nuc_two.length
      raise ArgumentError
    end
    nuc_one = nuc_one.scan(/\w/)
    nuc_two = nuc_two.scan(/\w/)
    diff = 0
    count = 0
    nuc_one.each do |gene|
      diff += 1 if nuc_two[count] != gene
      count += 1
    end
    diff
  end
end