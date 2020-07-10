class School
  attr_reader :rosters

  def initialize
    @rosters = Hash.new { [] }
  end

  # Keys are grades, values are arrays of names.
  # @return [void]
  def add(name, grade)
    rosters[grade] <<= name
  end

  # Returns empty array if no students exist in the grade.
  # @return [Array] of student names
  def students(grade)
    sorted_roster[grade] || []
  end

  def students_by_grade
    sorted_roster.map do |grade, grade_students|
      { grade: grade, students: grade_students }
    end
  end

  private

  # Sort keys and values in the roster.
  # @return [Hash]
  def sorted_roster
    @sorted_roster ||= rosters.transform_values(&:sort).sort.to_h
  end
end
