class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_courses, inverse_of: :student, foreign_key: "student_id"
  has_many :courses, through: :user_courses, inverse_of: :students

end
