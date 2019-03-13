class Acronym
	# Converts a string to an acronym.
	# @param [String]
	# @return [String] representing acronym of input
	def self.abbreviate(input)
		input.scan(/\w+/).map(&:chr).join.upcase
	end
end
