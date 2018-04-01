class Course < ApplicationRecord
  belongs_to :instructor
  has_and_belongs_to_many :users

  validates :name, presence: true
  validates :course_id, presence: true  
end
