# app/controllers/student/registrations_controller.rb

class Student::RegistrationsController < Devise::RegistrationsController
  include Devise::Validatable

  def new
    build_resource
    yield resource if block_given?
    render 'students/registrations/new'
  end
end