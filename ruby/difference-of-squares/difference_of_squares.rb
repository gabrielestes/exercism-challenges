class Squares
  def initialize(numbers)
    @numbers = 0.upto(numbers)
  end

  def square_of_sum
    @square_of_sum ||= @numbers.reduce(:+) ** 2
  end

  def sum_of_squares
    @sum_of_squares ||= @numbers.reduce { |sum, n| sum += n ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end