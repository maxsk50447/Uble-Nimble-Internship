FactoryBot.define do
  
  factory :student do
    email { FFaker::Internet.email }
    password '12345678'
    password_confirmation '12345678'
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    citizen_id '1234567891234'
    student_id '5810545000'
  end
end