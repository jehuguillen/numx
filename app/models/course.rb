class Course < ApplicationRecord
    has_many :skills

    has_many :student_courses, inverse_of: :course
    has_many :students, through: :student_courses, inverse_of: :courses
end
