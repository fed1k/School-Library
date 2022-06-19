require_relative 'person'
require_relative 'classroom'
class Student < Person
  # attr_accessor :classroom

  def initialize(age, parent_permission, name = 'Unknown')
    super(age, name, parent_permission: parent_permission)
  end

  def classroom(classroom)
    classroom_one = classroom
    classroom_one.student << self unless classroom_one.student.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
