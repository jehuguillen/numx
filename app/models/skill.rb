class Skill < ApplicationRecord
  has_many :lessons
  belongs_to :lesson

end
