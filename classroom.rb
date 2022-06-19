class Classroom
  attr_accessor :label, :students, :teachers

  def initialize(label)
    @label = label
    @students = []
    @teachers = []
  end

  def add_student(student)
    @students << student
  end

  def add_teacher(teacher)
    @teachers << teacher
  end
end
