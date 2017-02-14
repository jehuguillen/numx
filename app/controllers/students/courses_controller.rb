class Students::CoursesController < ApplicationController
  before_action :authenticate_student!

	def index
		@courses = Course.all
	end
	def create
		puts params
		redirect_to student_course_skills_path(course_id: course_params[:id])
    end

    private
    
    def course_params
    	params.require(:course).permit(:id, :code)
    end
end
