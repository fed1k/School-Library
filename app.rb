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
end
interface
