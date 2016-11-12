class Student < ApplicationRecord
 has_many :courses

  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.greetings(self).deliver_now
  end
end
