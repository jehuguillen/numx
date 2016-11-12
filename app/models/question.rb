class Question < ApplicationRecord
belongs_to :lesson
has_many :anwers
end
