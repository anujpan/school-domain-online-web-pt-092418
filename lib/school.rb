require 'pry'

class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new
  end
  
  def add_student(student, grade)
    # if @roster.keys.include?(grade)
    #   @roster[grade].push(student)
    # else
    #   @roster[grade] = [student]
    # end
    

    # @roster[grade] = [] unless @roaster[grade]
    

    # @roaster[grade] || @roaster[grade] = []
    

    # @roster[grade] ? @roster[grade].push(student) : @roster[grade] = [student]
    
    @roster[grade] ||= []


    @roster[grade].push(student)
  end
  
  def grade(student)
    @roster[student]
  end
  
  def sort
    sorted = Hash.new
    
    @roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end
end
