class Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
  end

  attr_reader :id, :name, :age

  def set_name(name)
    @name = name
  end

  def set_age(age)
    @age = age
  end

  def is_of_age?
    if @age >= 18
      true
    else
      false
    end
  end

  def can_use_services?
    true if is_of_age? || parent_permission
  end

  private :is_of_age?
end
