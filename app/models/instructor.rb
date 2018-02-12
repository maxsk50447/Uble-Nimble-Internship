class Instructor < User
  validates :instructor_id, presence: true
  validates :department, presence: true
end
