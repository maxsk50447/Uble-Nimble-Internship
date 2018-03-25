class Instructor::RegistrationsController < Devise::RegistrationsController
  
  def new
    build_resource
    yield resource if block_given?
    render 'instructors/registrations/new'
  end
end