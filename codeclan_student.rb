class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def can_talk()
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end

end
