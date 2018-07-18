# code here!
class School 
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def roster 
    @roster
  end
  
  
  def add_student (student, grade)
    @student = student
    @grade = grade
    if @roster[grade] == nil
      @roster[grade] = []
    end 
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    new_roster = {}
    @roster.each do |grade, students| 
      new_roster[grade] = students.sort
      
    end 
    new_roster
  end 
end 