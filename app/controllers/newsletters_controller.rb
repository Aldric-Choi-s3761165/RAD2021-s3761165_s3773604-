class NewslettersController < ApplicationController
  
  def new
    @newsletter = Newsletter.new
  end
  
  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      redirect_to "/"
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
