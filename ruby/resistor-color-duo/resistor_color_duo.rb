class ResistorColorDuo
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
  }.freeze

  def self.value(colors = [])
    # Only use the first two colors given.
    colors[0..1].each_with_object('') do |color, resistance|
      resistance << COLOR_MAP[color]
    end.to_i
  end
end
