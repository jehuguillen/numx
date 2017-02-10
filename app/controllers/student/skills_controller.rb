class Student::SkillsController < ApplicationController
	skip_load_and_authorize_resource

	def index
		course = Course.find params[:course_id]
		@skills = course.skills
	end
end