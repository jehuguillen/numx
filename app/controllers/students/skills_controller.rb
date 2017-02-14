class Students::SkillsController < ApplicationController
  before_action :authenticate_student!

	def index
		course = Course.find params[:course_id]
		@skills = course.skills
	end
end
