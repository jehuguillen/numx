class Lesson < ApplicationRecord
  has_many :questions
  belongs_to :skill
end
