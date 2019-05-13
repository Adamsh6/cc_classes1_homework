# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
#
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
#   }
# Create a getter for the books YES
# Create a method that takes in a book title and returns all of the information about that book. YES
# Create a method that takes in a book title and returns only the rental details for that book. YESYES
# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings) YESYESYES
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
require("pry")
class Library

  def initialize(book_array)
    @books = book_array
  end

  def get_book(book_name)
    for book in @books
      return book if book[:title] == book_name
    end
    return nil
  end

  def get_book_details(book_name)
    book = get_book(book_name)
    return "Title: #{book[:title]}\nRental Details:\nStudent Name: #{book[:rental_details][:student_name]}\nDue Date: #{book[:rental_details][:date]}"
  end

  def get_rental_details(book_name)
    book = get_book(book_name)
    return "Student Name: #{book[:rental_details][:student_name]}\nDue Date: #{book[:rental_details][:date]}"
  end

  def add_new_book(book_name)
    new_book = {
      title: book_name,
      rental_details: {
        student_name: '',
        date: ''
      }
    }
    @books << new_book
  end

  def change_rental_details(book_name, person, date)
    for book in @books
      x = book if book[:title] == book_name
    end
    i = @books.index(x)
    @books[i][:rental_details][:student_name] = person
    @books[i][:rental_details][:date] = date
  end
end
