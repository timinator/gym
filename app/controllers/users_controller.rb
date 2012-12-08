class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to company_list_path
		else
			render :new
		end
	end

	def show
	end

	def edit
		user_id = params[:id]
		@user = User.find(user_id)
	end

	def update
	end
	def advance
	end
end





