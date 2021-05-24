class PasswordMailer < ApplicationMailer
default :from => 's3761165@student.rmit.edu.au'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
 def reset(customer)
    @customer = customer
    mail( :to => @customer.email, :subject => 'Password Reset' )
  end
end
