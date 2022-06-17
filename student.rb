require_relative 'person'
require_relative 'classroom'
class Student < Person
  attr_accessor :classroom

  def initialize(age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
