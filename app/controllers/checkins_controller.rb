class CheckinsController < ApplicationController
  def index
    @checkins = Checkin.last(15)
    @count = Checkin.where(:user_id => session[:user_id]).count
  end

  def create
    t = Time.parse(params[:time]+params[:ampm])
    w=params[:workout]
    Checkin.create(:time => t, :workout_type => w, :user_id => session[:user_id])
    @checkins = Checkin.last(10)
    @count = Checkin.where(:user_id => session[:user_id]).count
  end

  def record
    r = Record.new
    r.weight = params[:weight]
    r.run = params[:run]
    r.pushups = params[:pushups]
    r.user_id = @authenticated_user.id
    r.save
  end

  def stats
  end

  def update
    render :json => Record.where(:user_id => @authenticated_user.id)
  end
end