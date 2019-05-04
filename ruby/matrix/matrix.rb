class Matrix
  def initialize(raw_matrix)
    @raw_matrix = raw_matrix
  end

  def rows
    raw_matrix.each_line.map do |row|
      row.split(' ').map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end

  private

  attr_reader :raw_matrix
end
