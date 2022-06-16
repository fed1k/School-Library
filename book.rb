class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
  attr_accessor :title, :author
end
