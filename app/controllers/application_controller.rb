class ApplicationController < ActionController::Base
  include Pundit 
  after_action :verify_authorized, except: :index, unless: :devise_controller?
  # after_action :verify_policy_scoped, only: :index
  protect_from_forgery

  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from Pundit::NotAuthorizedError do
    flash[:alert] = "Access denied."
    redirect_to (request.referrer || root_path)
  end

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:firstname,
                                              :lastname,
                                              :citizen_id,
                                              :student_id,
                                              :instructor_id,
                                              :department])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:firstname,
                                      :lastname,
                                      :citizen_id,
                                      :student_id,
                                      :instructor_id,
                                      :department])
  end
end
