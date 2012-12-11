class	MessagesController < ApplicationController
	def index
		user_id = params[:id]
		@receiver = User.find(user_id)
		@message = Message.new
	end
	def create

		m = Message.new(params[:message])
		m[:s_id] = @authenticated_user.id
		m[:r_id] = params[:r_id]
		if @authenticated_user && m.save
			redirect_to user_path
		else
			render :index
		end
	end
	def inbox
		user_id = params[:id]
		@inbox = User.find(user_id).receive
		@sentbox = User.find(user_id).sendd
	end
end