require 'rails_helper'

feature 'Instructor create course' do
  scenario 'it show course after course create' do
    login_with_instructor

    course_name = 'Math'

    visit '/courses/new'

    fill_in 'course_name', with: course_name
    fill_in 'course_course_id', with: '01210003'

    click_button 'Create'

    visit '/courses'

    expect(page).to have_content(course_name)    
  end

  private
  def login_with_instructor
    visit '/users/sign_in'

    instructor = FactoryBot.create(:instructor)
      
    fill_in 'user_email', with: instructor.email
    fill_in 'user_password', with: '12345678'
    
    click_button 'Sign in'
  end
end