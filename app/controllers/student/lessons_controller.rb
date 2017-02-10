class Student::LessonsController < ApplicationController

  def basics_angles
  	@lessons = course.skills.lessons
  end
end