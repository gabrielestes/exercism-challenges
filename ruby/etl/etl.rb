class ETL
  def self.transform(old_scoring)
    old_scoring.each_with_object({}) do |(points, letters), new_scoring|
      letters.each { |letter| new_scoring[letter.downcase] = points }
    end
  end
end
