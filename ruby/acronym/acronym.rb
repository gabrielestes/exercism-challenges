class Acronym
  # Converts a string to an acronym.
  # @param [String]
  # @return [String] representing acronym of input
  def self.abbreviate(input)
    input.scan(/\b[a-zA-Z]/).join.upcase
  end
end
