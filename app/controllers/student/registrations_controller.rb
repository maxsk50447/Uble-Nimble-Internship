class Student::RegistrationsController < Devise::RegistrationsController

  def new
    build_resource
    yield resource if block_given?
    render 'students/registrations/new'
  end
end