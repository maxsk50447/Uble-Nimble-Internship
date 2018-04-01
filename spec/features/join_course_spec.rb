require 'rails_helper'

feature 'Student join course' do
  scenario 'apply button disappear after join course' do
    visit '/users/sign_in'

    student = FactoryBot.create(:student)
      
    fill_in 'user_email', with: student.email
    fill_in 'user_password', with: '12345678'
    
    click_button 'Sign in'

    course = FactoryBot.create(:course)

    visit "/courses/#{course.id}"

    find('.btn.btn-success')
    click_link 'Apply'

    visit "/courses/#{course.id}"

    expect(page).not_to have_css('.btn.btn-success') 
    expect(page).to have_content(student.first_name)
  end
end