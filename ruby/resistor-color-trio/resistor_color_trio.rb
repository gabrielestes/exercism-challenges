require 'pry'

class ResistorColorTrio < Minitest::Test
  attr_reader :colors

  COLOR_MAP = {
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' => '9'
  }

  def initialize(colors)
    @colors = colors
  end

  def label
    "Resistor value: #{resistance}"
  end

  private

  def multiplier
    '0' * COLOR_MAP[colors.last].to_i
  end

  def color_values
    colors[0,2].map do |color|
      raise ArgumentError unless COLOR_MAP.keys.include?(color)

      COLOR_MAP[color]
    end.join('')
  end

  def resistance
    ohms = color_values + multiplier

    if ohms.end_with?('000')
      ohms[0..-4] + ' kiloohms'
    else
      "#{ohms} ohms"
    end
  end
end
