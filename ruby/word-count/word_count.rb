class Phrase
  attr_reader :text

  WORD_REGEX = /\b[\w']+\b/.freeze

  def initialize(text)
    @text = text
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end

  private

  def words
    text.downcase.scan(WORD_REGEX)
  end
end
