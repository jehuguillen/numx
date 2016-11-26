class Lesson < ApplicationRecord
  has_many :questions
  belongs_to :skill

  def complete_name
  	"#{self.skill.course.name} #{self.skill.name} #{self.name}"
  end
end
