class UsersController < ApplicationController


	def show
	end

	def upload_users
		User.import(params[:file])
		redirect_to users_path
	end
end
