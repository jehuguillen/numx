class Lesson < ApplicationRecord
  belongs_to :course
  belongs_to :student
  has_many :questions
end
