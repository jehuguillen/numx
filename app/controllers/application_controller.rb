class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    if current_teacher
      redirect_to root_url, :alert => exception.message
    else
      redirect_to students_courses_path
    end
  end

  protected

  def after_sign_in_path_for(resource)
    return students_courses_path if resource.is_a? Student
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end
end
