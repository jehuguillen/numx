class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  load_and_authorize_resource

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    if current_user.has_role? :student
    redirect_to student_courses_path
  else
    redirect_to root_url, :alert => exception.message
  end
  end

  protected

  def after_sign_in_path_for(resource)
    return student_courses_path if resource.has_role? :student

    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [role_ids: []])
  end

  def unautorize_student!
    redirect_to student_courses_path if current_user.has_role? :student
  end
end
