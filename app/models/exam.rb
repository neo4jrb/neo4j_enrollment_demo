class Exam 
  include Neo4j::ActiveNode

  has_one :out, :instructor, type: :given_by
  has_one :out, :course, type: :for

  has_many :in, :students, rel_class: ExamAttendance

  property :type

  validates_inclusion_of :type, in: ['Midterm', 'Final']

  def name
    type
  end
end
