class NewsletterNotifierMailer < ApplicationMailer
    default :from => 'any_from_address@example.com'

    # send a signup email to the user, pass in the user object that   contains the user's email address
    def send_subscribe_email(newsletter)
        @newsletter = newsletter
        mail( :to => @newsletter.email,
        :subject => 'Thanks for subscribing up for our amazing app' )
    end
end
