class School
  def initialize
    # Instantiates a hash with a default proc block allowing new elements to be added to an array value.
    @rosters = Hash.new { |hash, key| hash[key] = [] }
  end

  # Keys are grades, values are arrays of names.
  # @return [void]
  def add(name, grade)
    @rosters[grade] << name
  end

  # Returns empty array if no students exist in the grade.
  # @return [Array] of student names
  def students(grade)
    sorted_roster[grade] || []
  end

  # @return [Array<Hash>]
  def students_by_grade
    sorted_roster.each_with_object([]) do |(grade, roster), acc|
      acc << { grade: grade, students: roster }
    end
  end

  private

  # Sort keys and values in the roster.
  # @return [Hash]
  def sorted_roster
    @sorted_roster ||= @rosters.transform_values(&:sort).sort.to_h
  end
end
