class UserMailer < ApplicationMailer
  default from: "jehu.guillen@gmail.com"
def greetings()
mail(to: "jehu.guillen@gmial.com",
subject: 'Bienvenido')
end
end
