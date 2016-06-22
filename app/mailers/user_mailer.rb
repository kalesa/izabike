class UserMailer < ApplicationMailer
  default from: "iza.abao@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'iza.abao@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end
