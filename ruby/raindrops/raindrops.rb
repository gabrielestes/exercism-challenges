class Raindrops
  def self.convert(drops)
    divisors = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
    sound = divisors.select do |divisor|
      (drops % divisor).zero?
    end.values.join

    sound.empty? ? drops.to_s : sound
  end
end

module BookKeeping
  VERSION = 3
end
