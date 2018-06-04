class ApplicationController < ActionController::Base
	def current_user
    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  	end

  	  def create
    	render text: request.env['omniauth.auth'].to_yaml
 	  end

 	helper_method :current_user

end
