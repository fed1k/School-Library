require_relative 'nameable'
require_relative 'person'
class BaseDecorator
    def initialize(nameable)
        super()
        @nameable = nameable
    end

    def correct_name
        @nameable
    end
end

class CapitalizeDecorator < BaseDecorator
    def correct_name
        return @nameable.correct_name.capitalize()
    end
end

class TrimmerDecorator < BaseDecorator
    def correct_name
       if @nameable.correct_name.length > 10
        puts @nameable.correct_name[0, 10]
       end
    end
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
capitalizedTrimmedPerson.correct_name
