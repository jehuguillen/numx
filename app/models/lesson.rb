class Lesson < ApplicationRecord
  belongs_to :Skill
  has_many :questions
end
