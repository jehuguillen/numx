class UserCourse < ApplicationRecord
	belongs_to :student, inverse_of: :user_courses, class_name: "User"
	belongs_to :course, inverse_of: :user_courses
end
