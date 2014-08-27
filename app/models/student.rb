class Student < Person
  has_many :out, :courses, type: :enrolled_in
end
