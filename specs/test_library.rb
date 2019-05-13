require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < Minitest::Test
  # Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.

  def setup
      @book1 = {
        title: "name_of_the_wind",
        rental_details: {
         student_name: "Adam",
         date: "28/12/16"
        }
      }
      @book2 = {
        title: "elantris",
        rental_details: {
         student_name: "Jeff",
         date: "12/08/18"
        }
      }
    @library = Library.new([@book1, @book2])
  end

  def test_get_book
    assert_equal(@book2, @library.get_book("elantris"))
  end

  def test_get_book_details
    expected = "Title: name_of_the_wind\nRental Details:\nStudent Name: Adam\nDue Date: 28/12/16"
    assert_equal(expected, @library.get_book_details("name_of_the_wind"))
  end
  # Create a method that takes in a book title and returns only the rental details for that book.

  def test_get_rental_details
    expected = "Student Name: Jeff\nDue Date: 12/08/18"
    assert_equal(expected, @library.get_rental_details("elantris"))
  end

  # Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)

  def test_add_new_book
    @library.add_new_book("catch_22")
    expected = {
      title: 'catch_22',
      rental_details: {
        student_name: '',
        date: ''
      }
    }
    assert_equal(expected, @library.get_book('catch_22'))
  end

  # Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

  def test_change_rental_details
    @library.change_rental_details("elantris", "Rick", "22/05/19")
    expected = {
      title: 'elantris',
      rental_details: {
        student_name: 'Rick',
        date: '22/05/19'
      }
    }
    assert_equal(expected, @library.get_book("elantris"))
  end

end
