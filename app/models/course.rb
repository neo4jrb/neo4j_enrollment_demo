class Course 
  include Neo4j::ActiveNode

  property :subject
  property :level, type: Integer
  property :introduced, type: DateTime

  has_many :in, :students, origin: :courses
  has_many :in, :instructors, origin: :courses
  has_many :in, :exams, origin: :course

  def name
    "#{subject} #{level}"
  end

end
