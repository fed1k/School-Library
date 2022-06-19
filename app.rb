require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'
# rubocop:disable Metrics/CyclomaticComplexity
def main
  @store = [[], [[], []], []]
  def create_person
    print 'Want to create a student (1) or a teacher (2)? [Input the number]:'
    person = gets.chomp
    case person
    when '1'
      print 'Age:'
      student_age = gets.chomp
      print 'Name:'
      student_name = gets.chomp
      print 'Has parent permission? [Y/N]:'
      student_par_permission = gets.chomp
      @store[1][0] << Student.new(student_age,
                                  student_name, student_par_permission)
    when '2'
      print 'Age:'
      teacher_age = gets.chomp
      print 'Name:'
      teacher_name = gets.chomp
      print 'Specialization:'
      teacher_stack = gets.chomp
      @store[1][1] << Teacher.new(teacher_stack,
                                  teacher_age, teacher_name)
    end
    puts "Person created successfully\n "
    interface
  end

  def create_book
    print 'Title:'
    book_title = gets.chomp
    print 'Author:'
    book_author = gets.chomp
    @store[0] << Book.new(book_title, book_author)
    puts "Book created successfully\n "
    interface
  end

  def exit
    puts "Thank you for using this app!\n "
  end

  def assign_rental
    puts 'Select a book from the following list by number'
    @store[0].each do |j|
      puts "#{@store[0].find_index(j)}) Title: '#{j.title}',
       Author: #{j.author}"
    end
    assign_rental_to_book = gets.chomp
    puts 'Select a person from the following list by number (not id)'
    @store[1][0].each do |h|
      puts "#{@store[1][0].find_index(h)}) [Student] Name: #{h.name},
       Age: #{h.age}, ID: #{h.id}"
    end
    @store[1][1].each do |h|
      puts "#{@store[1][1].find_index(h)}) [Teacher] Name: #{h.name}, Age: #{h.age}, ID: #{h.id}"
    end
    assign_rental_to_person = gets.chomp
    print 'Date:'
    assign_rental_date = gets.chomp
    puts 'Rental created successfully'
    @store[2] << Rental.new(assign_rental_date, assign_rental_to_book, assign_rental_to_person)
    puts @store[2]
    interface
  end

  def retrieve_rental
    print 'ID of person:'
    get_rental = gets.chomp
    @store[1][0].each do |i|
      puts i.name if i.id == get_rental
    end
  end

  def interface
    myarray = [
      '1 - List all books', '2 - List all people', '3 - Create a person',
      '4 - Create a book', '5 - Create a rental',
      '6 - List all rentals for a given person id', '7 - Exit'
    ]
    puts "Welcome to School Library App!\n "
    puts 'Please choose an option by entering a number:'
    myarray.each do |i|
      puts i
    end
    name = gets.chomp
    case name
    when '1'
      @store[0].each do |j|
        puts "Title: '#{j.title}', Author: #{j.author}"
      end
      interface
    when '2'
      @store[1][0].each do |h|
        puts "[Student] Name: #{h.name}, Age: #{h.age}, ID: #{h.id}"
      end
      @store[1][1].each do |h|
        puts "[Teacher] Name: #{h.name}, Age: #{h.age}, ID: #{h.id}"
      end
      interface
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      assign_rental
    when '6'
      retrieve_rental
    when '7'
      exit
    end
  end
  interface
end
main
# rubocop:enable Metrics/CyclomaticComplexity
