class CheckinsController < ApplicationController
  def index
  end

  def create
    t = Time.parse(params[:time]+params[:ampm])
    w=params[:workout]
    Checkin.create(:time => t, :workout_type => w, :user_id => session[:user_id])
    @checkins = Checkin.all
    @count = Checkin.where(:user_id => session[:user_id]).count
    binding.pry
  end
end