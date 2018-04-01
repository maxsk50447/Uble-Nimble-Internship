FactoryBot.define do
  
  factory :instructor do
    email { FFaker::Internet.email }
    password '12345678'
    password_confirmation '12345678'
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    citizen_id '1234567891234'
    instructor_id '12321312'
    department 'Engineer'
  end
end