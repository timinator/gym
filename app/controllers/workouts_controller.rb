class WorkoutsController < ApplicationController
  respond_to :html, :json

  def create
    @workout = WorkoutInvitation.new(params[:workout]).send_invitation!
  end

  def new
    render :action => "new", :layout => "fancy"
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update_attributes!(params[:workout])
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.deleted_at = Time.now
    @workout.save!
  end

  def book
    @workout = Workout.find(params[:id])
    @workout.book!

    #this logic should be refactored into another class
    @workout.users.each do |user|
      WorkoutMailer.workout_booked(user, @workout.start_date).deliver
    end
  end

  def index
    @workouts = Workout.current
    respond_with(@workouts)
  end  
end