require_relative 'book'
require_relative 'student'
def create_person
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
  person = gets.chomp
  if person == '1'
    print 'Age:'
    student_age = gets.chomp
    print 'Name:'
    student_name = gets.chomp
    print 'Has parent permission? [Y/N]:'
    student_par_permission = gets.chomp
    # student_data = {student_age: student_age, student_name: student_name, student_par_permission: student_par_permission}
    # puts student_data
    Student.new(student_age, student_name, student_par_permission)
  elsif person == '2'
    print 'Age:'
    teacher_age = gets.chomp
    print 'Name:'
    teacher_name = gets.chomp
    print 'Specialization:'
    teacher_stack = gets.chomp
  end
  puts 'Person created successfully'
  interface
end

def create_book
  print 'Title:'
  book_title = gets.chomp
  print 'Author:'
  book_author = gets.chomp
  Book.new(book_title, book_author)
  puts 'Book created successfully'
  interface
end

def exit
    puts 'Thank you for using this app!'
end

def interface
    myarray = [
        '1 - List all books', '2 - List all people', '3 - Create a person',
        '4 - Create a book', '5 - Create a rental',
        '6 - List all rentals for a given person id', '7 - Exit'
    ]
    puts 'Welcome to School Library App!'
    puts 'Please choose an option by entering a number:'
    for i in myarray
      puts i
    end
    name = gets.chomp
    if name == '1'
      puts '1 is clicked'
    elsif name == '2'
      puts '2 is clicked'
    elsif name == '3'
      create_person
    elsif name == '4'
      create_book
    elsif name == '5'
      puts '5 is clicked'
    elsif name == '6'
      puts '6 is clicked'
    elsif name == '7'
      exit
    end
end
interface
  