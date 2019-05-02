class Matrix
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def rows
    input.split("\n").map do |row|
      row.split(' ').map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end
end
