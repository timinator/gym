class	MessagesController < ApplicationController
	def index
		@user = User.find(@authenticated_user.id)
	end

	def new
		@receiver = User.find(params[:receiver])
	end

	def create
		if params[:sms] == 'true'
			account_sid = ENV['TW_SID']
			auth_token = ENV['TW_TOK']
			client = Twilio::REST::Client.new account_sid, auth_token

			from = "+19177468813" # Your Twilio number
			to = "+16469208813"
			body = params[:message]

		  client.account.sms.messages.create(
		    :from => from,
		    :to => to,
		    :body => body
		  )
		end

		if params[:sms].nil?
			params[:sms] = false
		end
		m = Message.create(s_id: @authenticated_user.id, r_id: params[:r_id], content: params[:message], sms: params[:sms])
		if @authenticated_user && m.save
		else
			render :new
		end
	end

	def reply
		@id = params[:id]
		@rid = Message.find(params[:id]).s_id
		@sid = User.find(@authenticated_user.id).id
	end
end