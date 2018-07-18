require 'pry'
class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end
  
  def add_student(student, grade)
   if @roster[grade] == nil
      @roster[grade] = []
    end
      @roster[grade] << student
  end
    
  def grade(grade)
    @roster[grade]
  end
  
  def sort
      new_hash = {}
    
      @roster.each do |key, value| 
      new_hash[key] = value.sort
    end
    
    new_hash
  end


end

school = School.new("Bayside High School")