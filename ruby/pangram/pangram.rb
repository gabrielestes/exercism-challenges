class Pangram
  def self.is_pangram?(text)
    letters = text.gsub(/ /, '').downcase.split('')
    alphabet = [*('a'..'z')]
    alphabet.each do |letter|
      return false unless letters.include?(letter)
    end
  end
end