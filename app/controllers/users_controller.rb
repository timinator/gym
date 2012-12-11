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
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user)
		else
			render :new
		end

		Notifications.welcome(@user.name).deliver # welcome email
	end

	def show

		user_id = params[:id]
		@user = User.find(user_id)
	end

	def edit
		binding.pry
		user_id = params[:id]
		@user = User.find(user_id)
		
	end

	def update
		@user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to user_path(@user)
    else
      render :edit
    end
	end
	def advance
	end
end





