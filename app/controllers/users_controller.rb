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

		Notifications.welcome(@user.name).deliver
	end

	def show
	end

	def edit
		user_id = params[:id]
		@user = User.find(user_id)
	end

	def update
		@user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to root_path
    else
      render :edit
    end
	end
	def advance
	end
end





