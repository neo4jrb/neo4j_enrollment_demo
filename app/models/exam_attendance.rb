class ExamAttendance
  include Neo4j::ActiveRel

  from_class Student
  to_class   Exam
  type       :took

  property :taken, type: DateTime
  property :grade, type: Integer

  validates_inclusion_of :grade, in: (0..100)

  def letter_grade
    case grade
    when 90..100
      'A'
    when 80...90
      'B'
    when 70...80
      'C'
    when 60...70
      'D'
    else
      'F'
    end
  end
end

