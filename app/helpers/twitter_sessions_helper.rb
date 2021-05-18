module TwitterSessionsHelper
    def current_user_twitter
        @current_user_twitter ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def twitter_logged_in?
        !current_user_twitter.nil?
    end

end
