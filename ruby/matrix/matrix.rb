class Matrix
  def initialize(matrix_string)
    @matrix_string = matrix_string
  end

  def rows
    matrix_string.each_line.map do |row|
      row.split(' ').map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end

  private

  attr_reader :matrix_string
end
