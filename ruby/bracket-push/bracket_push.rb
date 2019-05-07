class Brackets
  BRACKET_MAP = { '{' => '}', '[' => ']', '(' => ')' }.freeze

  def self.paired?(brackets)
    open_brackets = BRACKET_MAP.keys
    closed_brackets = BRACKET_MAP.values
    brackets = brackets.scan(/[\(\)\[\]\{\}]/)
    return false if brackets.length.odd?

    unclosed_brackets = []
    brackets.each do |bracket|
      if open_brackets.include?(bracket)
        unclosed_brackets << bracket
      elsif closed_brackets.include?(bracket)
        unclosed_brackets.pop if unclosed_brackets.last == BRACKET_MAP.key(bracket)
      end
    end
    unclosed_brackets.empty?
  end
end
