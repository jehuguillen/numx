class Question < ApplicationRecord
has_many :anwers
belongs_to :lesson
end
