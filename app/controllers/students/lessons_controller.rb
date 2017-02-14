class Students::LessonsController < ApplicationController
  before_action :authenticate_student!

  def basics_angles
  	@lessons = course.skills.lessons
  end
end
