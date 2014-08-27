class Instructor < Person
  has_many :out, :courses, type: :teaches

  has_many :in, :exams, origin: :instructor

  def common_students_with(other_instructor)
    courses.students(:student).courses.instructors.where(neo_id: other_instructor.neo_id).pluck(:student)
  end

  def common_students
    courses.students(:student).courses.instructors(:other_instructor).where('ID(other_instructor) <> {id}').params(id: self.neo_id).pluck(:other_instructor, 'collect(student)')
  end

end
