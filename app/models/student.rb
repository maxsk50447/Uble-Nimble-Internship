class Student < User
  has_many :courses
  has_and_belongs_to_many :courses

  validates :student_id, presence: true
end
