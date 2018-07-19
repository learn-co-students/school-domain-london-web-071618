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

    #binding.pry

    if @roster.has_key?(grade)
      # binding.pry
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

# school = School.new("Bayside High School")

# school.add_student("Zach Morris", 9)
# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)
# school.roster

# binding.pry

#puts "asdasd"
