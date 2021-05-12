# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
  
ActionMailer::Base.smtp_settings = {
    :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
    :password => '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', # This is the secret sendgrid API key which was issued during API key creation
    :domain => 'student.rmit.edu.au',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
}