class School

attr_reader :roster
attr_accessor


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster[student_grade] == nil
      @roster[student_grade] = []
      @roster[student_grade]<< student_name
    else
      @roster[student_grade]<< student_name
    end
  end

  def grade(grade_no)
    @roster[grade_no]
  end

  def sort
    grade_sorted = @roster.sort.to_h
    all_sorted = {}
    grade_sorted.each {|grade, student_array| all_sorted[grade] = student_array.sort}
    all_sorted
  end
end
