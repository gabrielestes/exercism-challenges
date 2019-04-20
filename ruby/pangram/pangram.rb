# Tests if a string contains all the letters of the alphabet.
class Pangram
  def self.pangram?(text)
    return false if text.empty?

    # Length of unique downcased letters should equal length of alphabet.
    text.downcase.scan(/[a-z]/).uniq.length == 26
  end
end
