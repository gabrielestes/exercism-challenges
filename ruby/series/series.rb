class Series
  def initialize(raw_number)
    @number_series = raw_number.chars
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > number_series.length

    number_series.each_cons(slice_length).map(&:join)
  end

  private

  attr_reader :number_series
end
