# code here!
require 'pry'
class School
  attr_accessor :school, :roster
  attr_reader :grade
 
  def initialize(school)
   @school=school
   @roster={}
  end
  
  def add_student(student_name, grade)
    # binding.pry
    # if the grade/key does exist in the roster, then the new instance of student_name name will be pushed into the array of that key. 
    if @roster[grade] 
      @roster[grade] << student_name
    else
       # if the grade does not exist in the roster, then we create the grade(key) which by default has an empty array as value. The student_name name will be pushed into the array. 
      @roster[grade] = []
      @roster[grade] << student_name
    end
  
  end
  
  def grade(grade)
    @roster[grade] 
    
 
  end

  def sort
    roster_sorted={}
    @roster.each do |k,v|
    roster_sorted[k] = v.sort
  end
    roster_sorted
    #binding.pry
    end

  end

