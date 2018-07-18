require 'pry'

class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade].push(student_name)
    else
      @roster[grade].push(student_name)
    end
  end


  def grade(grade)
    @roster[grade]
  end


  def sort
    @roster.each do |grade, list|
      @roster[grade] = list.sort
    end
  end
end
