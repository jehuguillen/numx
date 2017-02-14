class StudentCourse < ApplicationRecord
	belongs_to :student, inverse_of: :student_courses
	belongs_to :course, inverse_of: :student_courses
end
