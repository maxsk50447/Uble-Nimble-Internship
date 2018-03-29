require 'rails_helper'

feature 'User sign up' do
  context 'user' do
    scenario 'sign up with valid password' do
      visit '/users/sign_up'

      user = FactoryBot.create(:user)
      
      fill_in 'user_email', with: FFaker::Internet.email
      fill_in 'user_password', with: '123456'
      fill_in 'user_password_confirmation', with: '123456'
      fill_in 'user_first_name', with: FFaker::Name.first_name
      fill_in 'user_last_name', with:  FFaker::Name.last_name
      fill_in 'user_citizen_id', with: '1104000033921'
    
      click_button 'Sign up'
    
      expect(page.current_path).to eq('/')

    end
  end

  context 'student' do
    scenario 'sign up with valid password' do
      visit '/students/sign_up'

      student = FactoryBot.create(:student)
      
      fill_in 'student_email', with: FFaker::Internet.email
      fill_in 'student_password', with: '123456'
      fill_in 'student_password_confirmation', with: '123456'
      fill_in 'student_first_name', with: FFaker::Name.first_name
      fill_in 'student_last_name', with:  FFaker::Name.last_name
      fill_in 'student_citizen_id', with: '1104000033921'
      fill_in 'student_student_id', with: '5810545423'
    
      click_button 'Sign up'
    
      expect(page.current_path).to eq('/')
    end
  end

  context 'instructor' do
     scenario 'sign up with valid password' do
      visit '/instructors/sign_up'

      student = FactoryBot.create(:student)
      
      fill_in 'instructor_email', with: FFaker::Internet.email
      fill_in 'instructor_password', with: '123456'
      fill_in 'instructor_password_confirmation', with: '123456'
      fill_in 'instructor_first_name', with: FFaker::Name.first_name
      fill_in 'instructor_last_name', with:  FFaker::Name.last_name
      fill_in 'instructor_citizen_id', with: '1104000033921'
      fill_in 'instructor_instructor_id', with: '4214124124'
      fill_in 'instructor_department', with: 'Engineering'
    
      click_button 'Sign up'
    
      expect(page.current_path).to eq('/')
    end
  end
end