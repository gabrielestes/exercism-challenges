class Phrase
  attr_reader :words

  def initialize(text)
    @words = text.scan(/\w+'?\w?\b/).map(&:downcase)
  end

  def word_count
    words.uniq.each_with_object({}) do |word, result|
      result[word.to_s] = words.count(word)
    end
  end
end
