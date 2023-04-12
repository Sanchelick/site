class SessionsController < ApplicationController
    def destroy
		session[:id] = nil
		redirect_to root_path
	end
	def new
	end
	def create
		user = User.find_by(number: params[:number] .downcase)
		if user.present? && user.authenticate(params[:password])
			session[:id] = user.id
			redirect_to root_path
		else
			redirect_to sing_in_path
		end
	end
end
