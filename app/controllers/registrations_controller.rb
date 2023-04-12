class RegistrationsController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
            @user.status = "user"
			session[:id] = @user.id
			redirect_to root_path
		else
      		redirect_to sing_up_path
      		flash[:alert] = 'Неправильно'
		end
	end
	private def user_params
		params.require(:user).permit(:number, :password, :password_confirmation)
	end
end
