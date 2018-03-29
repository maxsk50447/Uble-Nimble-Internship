require 'rails_helper'

feature 'User Sign in' do
  context 'user' do
    scenario 'sign in with valid password' do
      visit '/users/sign_in'

      user = FactoryBot.create(:user)
      
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: '12345678'
    
      click_button 'Sign in'
    
      expect(page.current_path).to eq('/')

    end

    scenario 'sign in with invalid password' do
      visit '/users/sign_in'

      user = FactoryBot.create(:user)
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: '123456'

      click_button 'Sign in'

      expect(page.current_path).to eq('/users/sign_in')

    end
  end

  context 'student' do
    scenario 'sign in with valid password' do
      visit '/users/sign_in'

      student = FactoryBot.create(:student)
      
      fill_in 'user_email', with: student.email
      fill_in 'user_password', with: '12345678'
    
      click_button 'Sign in'
    
      expect(page.current_path).to eq('/')
    end

    scenario 'sign in with invalid password' do
      visit '/users/sign_in'

      student = FactoryBot.create(:student)
      fill_in 'user_email', with: student.email
      fill_in 'user_password', with: '123456'

      click_button 'Sign in'

      expect(page.current_path).to eq('/users/sign_in')

    end
  end

  context 'instructor' do
    scenario 'sign in with valid password' do
      visit '/users/sign_in'

      instructor = FactoryBot.create(:instructor)
      
      fill_in 'user_email', with: instructor.email
      fill_in 'user_password', with: '12345678'
    
      click_button 'Sign in'
  
      expect(page).to have_content("Create course")
    end

    scenario 'sign in with invalid password' do
      visit '/users/sign_in'

      instructor = FactoryBot.create(:instructor)
      fill_in 'user_email', with: instructor.email
      fill_in 'user_password', with: '123456'

      click_button 'Sign in'

      expect(page.current_path).to eq('/users/sign_in')

    end
  end
end