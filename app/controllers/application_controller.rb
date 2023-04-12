class ApplicationController < ActionController::Base
    private
	def current_user
		@current_user ||=  User.find_by(id: session[:id]) if session[:id].present?
	end
	def user_singed_in?
		current_user.present?
	end
	helper_method :current_user, :user_singed_in?
end
