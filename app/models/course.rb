class Course < ApplicationRecord
    has_many :skills

    has_many :user_courses, inverse_of: :course
    has_many :students, through: :user_courses, inverse_of: :courses
end
