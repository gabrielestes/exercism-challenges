# This is titled roman_numerals_2 to mark it as my second and least-favorite
# solution to this challenge.

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
    roman_numeral = ''
    ROMAN_NUMERALS.each do |n, r|
      until number < n
        roman_numeral << r
        number -= n
      end
    end
    roman_numeral
  end
end
