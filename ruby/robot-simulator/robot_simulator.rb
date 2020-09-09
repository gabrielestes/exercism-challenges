require 'pry'
class Robot
  # bearing: [left, right]
  DIRECTIONS = {
    east: [:north, :south],
    west: [:south, :north],
    north: [:west, :east],
    south: [:east, :west],
  }.freeze

  def orient(direction)
    raise ArgumentError if DIRECTIONS[direction].nil?

    @direction = direction
  end

  def bearing
    @direction
  end

  def turn_right
    @direction = DIRECTIONS[@direction][1]
  end

  def turn_left
    @direction = DIRECTIONS[@direction][0]
  end

  def at(x, y)
    @x_coordinate = x
    @y_coordinate = y
  end

  def coordinates
    [@x_coordinate, @y_coordinate]
  end

  def advance
    case @direction
    when :north then @y_coordinate += 1
    when :south then @y_coordinate -= 1
    when :west then @x_coordinate -= 1
    when :east then @x_coordinate += 1
    end
  end
end

class Simulator
  DIRECTION_MAP = {
    'L' => :turn_left,
    'R' => :turn_right,
    'A' => :advance
  }.freeze

  def instructions(steps)
    steps.each_char.map { |letter| DIRECTION_MAP[letter] }
  end

  def place(robot, x:, y:, direction:)
    robot.at(x, y)
    robot.orient(direction)
  end

  def evaluate(robot, steps)
    instructions(steps).each { |command| robot.send(command) }
  end
end
