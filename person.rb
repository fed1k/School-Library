class Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
  end

  def id
    @id
  end

  def name
    @name
  end

  def age
    @age
  end

  def setName(name)
    @name = name
  end

  def setAge(age)
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
