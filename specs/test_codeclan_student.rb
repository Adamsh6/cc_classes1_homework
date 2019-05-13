require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestStudent < Minitest::Test

  def setup
    @student = Student.new("Adam", "G13")
  end

  def test_get_name
    assert_equal("Adam", @student.get_name)
  end

  def test_get_cohort
    assert_equal("G13", @student.get_cohort)
  end

  def test_set_name
    @student.set_name("Alejandro")
    assert_equal("Alejandro", @student.get_name)
  end

  def test_set_cohort
    @student.set_cohort("F1")
    assert_equal("F1", @student.get_cohort)
  end

  def test_talk
    assert_equal("I can talk", @student.talk)
  end

  def test_say_favourite_language
    test = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", test)
  end
end
