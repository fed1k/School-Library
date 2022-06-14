class Person
  def initialize(age, name = 'Unknown', _parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
  end

  attr_reader :id, :name, :age

  def _name(name)
    @name = name
  end

  def _age(age)
    @age = age
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    true if is_of_age? || parent_permission
  end

  private :is_of_age?
end
