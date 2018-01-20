class Integer
  ROMAN_NUMERALS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def to_roman
    number = self
    convert_numerals(number)
  end

  def convert_numerals(number)
    roman_numeral = ''
    until number.zero?
      ROMAN_NUMERALS.each do |a, r|
        next unless number >= a
        quotient, remainder = number.divmod(a)
        roman_numeral << r * quotient
        number = remainder
      end
    end
    roman_numeral
  end
end
