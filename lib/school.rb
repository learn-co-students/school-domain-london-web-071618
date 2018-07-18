require 'pry'

class School 
 
 attr_accessor :roster 
 
  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end
  
  def add_student(student_name, grade)
    if @roster.include?(grade)
      @roster[grade] << student_name
    else @roster[grade] = []
      @roster[grade] << student_name
    end 
  end
  
  def grade(grade)
    @roster[grade]
  end 
  
  
  def sort
    roster_sorted = {}
    @roster.sort.each do |grade, student_names|
      sorted_names = student_names.sort
      roster_sorted[grade] = sorted_names
    end 
    roster_sorted
  end 
  
end
