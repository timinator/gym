class	MessagesController < ApplicationController
	def index
		@user = User.find(@authenticated_user.id)
	end

	def new
		@receiver = User.find(params[:receiver])
	end

	def create
		if params[:sms].nil?
			params[:sms] = false
		end
		m = Message.create(s_id: @authenticated_user.id, r_id: params[:r_id], content: params[:message], sms: params[:sms])
		if @authenticated_user && m.save
		else
			render :new
		end
	end
	def inbox
		user_id = params[:id]
		@inbox = User.find(user_id).receive
		@sentbox = User.find(user_id).sendd
	end
end