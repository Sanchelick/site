class MainController < ApplicationController
    def index
		@user = User.find_by(id: session[:id])
		@product = Product.all
	end
end
