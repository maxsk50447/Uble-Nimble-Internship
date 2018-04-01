FactoryBot.define do
  
  factory :course do
    name { FFaker::Education.major }
    course_id '01203282'
    instructor { FactoryBot.create(:instructor)}
  end
end