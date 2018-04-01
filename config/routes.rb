Rails.application.routes.draw do
  # routes.rb
  devise_for :users, controllers: { registrations: 'registrations'}
  devise_for :students, only: :registrations, controllers: { registrations: 'student/registrations' }
  devise_for :instructors, only: :registrations, controllers: { registrations: 'instructor/registrations' }

  resources :courses do
    member do
      post 'apply'
    end
  end
    
  root 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
