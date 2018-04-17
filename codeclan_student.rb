class Student


def initialize(name, cohort)
  @holder_name = name
  @cohort = cohort
end

def get_student_name()
  return @holder_name
end

def get_student_cohort()
  return @cohort
end

def set_student_name(name)
  @holder_name = name
end

def set_student_cohort(cohort)
    @cohort = cohort
end

def student_talk()
    return "I want to Jump!!!"
end

def student_favourite_language(language)
    return "I love #{language}"
end

end
