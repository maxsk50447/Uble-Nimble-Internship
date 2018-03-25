class Instructor < User
  has_many :courses

  validates :instructor_id, presence: true
  validates :department, presence: true
end
