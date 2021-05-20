class NewslettersController < ApplicationController
  
  def new
    @newsletter = Newsletter.new
  end
  
  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      flash[:notice] = 'You are subscribed!, an email has been sent to your email address!'
      NewsletterNotifierMailer.send_subscribe_email(@newsletter).deliver_now
      redirect_to '/'
    else
      loadhomepagedata
      render 'static_pages/home'
    end
  end
  
  private 
    def newsletter_params
      params.require(:newsletter).permit(:email, :subscribe)
    end
end
