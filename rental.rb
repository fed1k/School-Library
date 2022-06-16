require_relative 'book'
require_relative 'person'
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  def add_rental
    book.rentals << self
  end

  def add_to_person
    person.rentals << self
  end
end
