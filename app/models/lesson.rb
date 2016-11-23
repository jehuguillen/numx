class Lesson < ApplicationRecord
  belongs_to :skill
  has_many :questions
end
