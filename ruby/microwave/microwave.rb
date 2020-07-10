class Microwave
  def initialize(input)
    @input = input
  end

  # https://ruby-doc.org/core-2.7.1/Kernel.html#method-i-format
  # %[flags][width][.precision]type
  def timer
    exact_input || evaluate_in_seconds
  end

  private

  # If a user inputs "100", the machine assumes they mean "01:00", not 100 seconds.
  # This assumption is determined by the number of digits they enter.
  def exact_input
    return if @input.to_s.length < 3

    # width: left padding is zeros (0), >= 4 characters (4)
    # type: integer (d)
    (format '%04d', @input).insert(2, ':')
  end

  # This is executed when the user entered exact seconds.
  def evaluate_in_seconds
    # width: left padding is zeros (0), >= 2 characters (2)
    # type: integer (d)
    minutes = format '%02d', (@input / 60)
    seconds = format '%02d', (@input % 60)
    [minutes, seconds].join(':')
  end
end
