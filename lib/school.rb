class School
  
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(s_name, s_grade)
  if @roster[s_grade] == nil
    @roster[s_grade] = []
    @roster[s_grade]<< s_name
  else
    @roster[s_grade]<< s_name
  end
end

  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    sorted_roster = {}
    @roster.each do |grade, student_array|
      sorted_roster[grade] = student_array.sort
    end
    return sorted_roster
  end
end

