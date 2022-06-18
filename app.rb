require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'

def main
  @store = [[], [[],[]], []]
  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    person = gets.chomp
    # data_holder = []
    if person == '1'
      print 'Age:'
      student_age = gets.chomp
      print 'Name:'
      student_name = gets.chomp
      print 'Has parent permission? [Y/N]:'
      student_par_permission = gets.chomp
      @store[1][0] << Student.new(student_age, student_name, student_par_permission)
    elsif person == '2'
      print 'Age:'
      teacher_age = gets.chomp
      print 'Name:'
      teacher_name = gets.chomp
      print 'Specialization:'
      teacher_stack = gets.chomp
      @store[1][1] << Teacher.new(teacher_stack, teacher_age, teacher_name)
    end
    puts "Person created successfully\n "
    # data_holder.add_student()
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
    puts "Select a book from the following list by number"
    @store[0].each do |j|
      puts "#{@store[0].find_index(j)}) Title: '#{j.title}', Author: #{j.author}"
    end
    assign_rental_to_book = gets.chomp
    puts 'Select a person from the following list by number (not id)'
    @store[1][0].each do |h|
      # puts "[Student] Name: #{h.name}, Age: #{h.age}"
      puts "#{@store[1][0].find_index(h)}) [Student] Name: #{h.name}, Age: #{h.age}, ID: #{h.id}"
    end
    @store[1][1].each do |h|
      # puts "[Student] Name: #{h.name}, Age: #{h.age}"
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
    # finder = @store[1][0].find {|i| i.id == get_rental }
    # finder.each do |j|
    #   puts j.date
    # end
    @store[1][0].each do |i|
      if i.id == get_rental
        puts i.name
      end
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
    for i in myarray
      puts i
    end
    name = gets.chomp
    if name == '1'
      # puts "Title: #{@store[0][0].title}"
      @store[0].each do |j|
        puts "Title: '#{j.title}', Author: #{j.author}"
      end
      interface
    elsif name == '2'
      # puts "Title: #{@store[0][0].title}"
      # puts "Author: #{@store[0][0].author}"
      @store[1][0].each do |h|
        # puts "[Student] Name: #{h.name}, Age: #{h.age}"
        puts "[Student] Name: #{h.name}, Age: #{h.age}, ID: #{h.id}"
      end
      @store[1][1].each do |h|
        # puts "[Student] Name: #{h.name}, Age: #{h.age}"
        puts "[Teacher] Name: #{h.name}, Age: #{h.age}, ID: #{h.id}"
      end
      interface
    elsif name == '3'
      create_person
    elsif name == '4'
      create_book
    elsif name == '5'
      assign_rental
    elsif name == '6'
      retrieve_rental
    elsif name == '7'
      exit
    end
  end
  interface
end
main
  