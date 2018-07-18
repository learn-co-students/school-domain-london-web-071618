require 'pry'

# code here!
class School
  
  attr_accessor :school, :roster
  
  def initialize(school, roster = {})
    @school = school
    @roster = roster
  end 
  
  def add_student(name, grade)
    @name = name 
    @grade = grade
    
    if @roster.has_key?(grade)
    @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end 
  end 
 
  def grade(num)
    @num = num
    
    t = roster.select {|names| names == num}

    t.values.flatten
  end 
  
  def sort
    
    @roster.each  do |k,v| 
    sorted = v.sort
    @roster[k] = sorted
    end 
  
  end 
end 
