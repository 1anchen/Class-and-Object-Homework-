require("minitest/autorun")
require("minitest/rg")
require_relative("../codeclan_student")

class TestCodeclanStudent < MiniTest::Test

def test_get_student__name
  new_student = Student.new("David", 21)
  assert_equal("David", new_student.get_student_name())
end

def test_get_student__cohort
  new_student = Student.new("David", 21)
  assert_equal(21, new_student.get_student_cohort())
end

def test_set_student__name
  new_student = Student.new("David", 21)
  assert_equal("Phil", new_student.set_student_name("Phil"))
end

def test_set_student__cohort
  new_student = Student.new("David", 21)
  assert_equal(20, new_student.set_student_cohort(20))
end


def test_student_talk
  new_student = Student.new("David", 21)
  assert_equal("I want to Jump!!!", new_student.student_talk())
end

def test_student_favourite_language
  new_student = Student.new("David", 21)
  assert_equal("I love Ruby", new_student.student_favourite_language())
end
end 
