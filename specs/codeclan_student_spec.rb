require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class StudentTest < MiniTest::Test

  def setup()
    @student = Student.new("Ally", "G10")
  end

  def test_student_has_name()
    name = @student.name()
    assert_equal("Ally", name)
  end

  def test_student_has_cohort()
    cohort = @student.cohort()
    assert_equal("G10", cohort)
  end

  def test_can_set_name()
    @student.set_name("Keith")
    name = @student.name()
    assert_equal("Keith", name)
  end

  # def test_can_set_student_name()
  #   @student.name = "Keith"
  #   name = @student.name()
  #   assert_equal("Keith", name)
  # end

  def test_can_set_cohort()
    @student.set_cohort("E21")
    cohort = @student.cohort()
    assert_equal("E21", cohort)
  end

  def test_can_talk()
    result = @student.can_talk()
    assert_equal("I can talk!", result)
  end

  def test_say_favourite_language()
    result = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end

end
