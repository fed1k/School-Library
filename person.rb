class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

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
    true if of_age? || @parent_permission
  end


  private :of_age?
end
